variable "region" {
  description = "Region in which you want to create distribution"
  type = string
  default = "us-west-2"
}

variable "bucket" {
    description = "the name of the bucket you are associating with cloudfront"
    type = string
    default = "ramyacloudfront26"
}

variable "acl" {
    description = "the properties of acl"
    type = string
    default = "private"
}

variable "s3_origin_id" {
    description = "the origin id of the creating s3 bucket"
    type = string
    default = "myS3Origin"
}

variable "origin_access_control_id" {
  description = "the origin access control id"
  type = string
  default = "E34MVPD82SVCX8"
}

variable "enabled" {
    description = "contains whether it is enabled or not"
    type = bool
    default = true
}

variable "is_ipv6_enabled" {
    description = "conatins wheter ipv6 enabled or not"
    type = bool
    default = true
}

variable "comment" {
    description = "it contains comments to describe"
    type = string
    default = "some comments"
}

variable "default_root_object" {
    description = "it contains some file"
    type = string
    default = "index.html"
}

variable "include_cookies" {
    description = "contains whether it includes cookies or not"
    type = bool
    default = false
}

variable "prefix" {
    description = "the prefix of the cloudfront"
    type = string
    default = "my prefix"
}

variable "allowed_methods" {
    description = "the allowed methods in cloudfront"
    type = list(string)
    default = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
}

variable "cached_methods" {
    description = "the cached methods in cloudfront"
    type = list(string)
    default = ["GET", "HEAD"]
}

variable "query_string" {
    description = "conatains true or false"
    type = bool
    default = false
}

variable "forward" {
    description = "contains whether cookies or forwaded or not"
    type = string
    default = "none"
}

variable "price_class" {
    description = " The price class determines the price tier (edge locations) that CloudFront will use for serving your content."
    type = string
    default = "PriceClass_200"
}

variable "restriction_type" {
    description = "the type of restriction for the cloudfront"
    type = string
    default = "whitelist"
}

variable "locations" {
    description = "the countries you want to blacklist or whitelist"
    type = list(string)
    default = [ "US", "CA", "GB", "DE" ]
}

variable "Environment" {
    description = "the environment of the distribution"
    type = string
    default = "production"
}

variable "cloudfront_default_certificate" {
    description = "the certification of cloudfront"
    type = bool
    default = true
}

variable "min_ttl" {
    description = "the minimum value"
    type = number
    default = 0
}
 variable "default_ttl" {
    description = "the default value"
    type = number
    default = 3600
 }

 variable "max_ttl" {
    description = "the maximum value"
    type = number
    default = 86400    
}

variable "viewer_protocol_policy" {
    description = "the viewerpolicy"
    type = string
    default = "allow-all"
}

variable "Name" {
    description = "the name of the bucket"
    type = string
    default = "My bucket"
}