resource "aws_emr_cluster" "cluster" {
  name          = var.name
  release_label = var.release_label
  applications  = var.applications

  additional_info = <<EOF
{
  "instanceAwsClientConfiguration": {
    "proxyPort": 8099,
    "proxyHost": "myproxy.example.com"
  }
}
EOF

  termination_protection            = var.termination_protection
  keep_job_flow_alive_when_no_steps = var.keep_job_flow_alive_when_no_steps
  autoscaling_role = var.autoscaling_role

  ec2_attributes {
    subnet_id                         = "subnet-0fdbd1df03cae8717"
    emr_managed_master_security_group = var.emr_managed_master_security_group
    emr_managed_slave_security_group  = var.emr_managed_slave_security_group
    instance_profile                  = var.instance_profile
  }

  master_instance_group {
    instance_type = "m4.large"
  }

  core_instance_group {
    instance_type  = "c4.large"
    instance_count = var.instance_count

    ebs_config {
      size                 = var.size
      type                 = var.type
      volumes_per_instance = var.volumes_per_instance
    }

    bid_price = var.bid_price

    autoscaling_policy = <<EOF
{
"Constraints": {
  "MinCapacity": 1,
  "MaxCapacity": 2
},
"Rules": [
  {
    "Name": "ScaleOutMemoryPercentage",
    "Description": "Scale out if YARNMemoryAvailablePercentage is less than 15",
    "Action": {
      "SimpleScalingPolicyConfiguration": {
        "AdjustmentType": "CHANGE_IN_CAPACITY",
        "ScalingAdjustment": 1,
        "CoolDown": 300
      }
    },
    "Trigger": {
      "CloudWatchAlarmDefinition": {
        "ComparisonOperator": "LESS_THAN",
        "EvaluationPeriods": 1,
        "MetricName": "YARNMemoryAvailablePercentage",
        "Namespace": "AWS/ElasticMapReduce",
        "Period": 300,
        "Statistic": "AVERAGE",
        "Threshold": 15.0,
        "Unit": "PERCENT"
      }
    }
  }
]
}
EOF
  }

  ebs_root_volume_size = var.ebs_root_volume_size


  tags = {
    role = "rolename"
    env  = "env"
  }

  bootstrap_action {
    path = "s3://elasticmapreduce/bootstrap-actions/run-if"
    name = "runif"
    args = ["instance.isMaster=true", "echo running on master node"]
  }

  configurations_json = <<EOF
  [
    {
      "Classification": "hadoop-env",
      "Configurations": [
        {
          "Classification": "export",
          "Properties": {
            "JAVA_HOME": "/usr/lib/jvm/java-1.8.0"
          }
        }
      ],
      "Properties": {}
    },
    {
      "Classification": "spark-env",
      "Configurations": [
        {
          "Classification": "export",
          "Properties": {
            "JAVA_HOME": "/usr/lib/jvm/java-1.8.0"
          }
        }
      ],
      "Properties": {}
    }
  ]
EOF


  service_role = var.service_role
}