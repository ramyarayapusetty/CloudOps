variable "region" {
  description = "Region in which you want to create distribution"
  type = string
}

variable "bucket" {
    description = "the name of the bucket you are associating with cloudfront"
    type = string
}

variable "acl" {
    description = "the properties of acl"
    type = string
}

variable "s3_origin_id" {
    description = "the origin id of the creating s3 bucket"
    type = string
}

variable "origin_access_control_id" {
  description = "the origin access control id"
  type = string
}

variable "enabled" {
    description = "contains whether it is enabled or not"
    type = bool
}

variable "is_ipv6_enabled" {
    description = "conatins wheter ipv6 enabled or not"
    type = bool
    default = true
}

variable "comment" {
    description = "it contains comments to describe"
    type = string
}

variable "default_root_object" {
    description = "it contains some file"
    type = string
}

variable "include_cookies" {
    description = "contains whether it includes cookies or not"
    type = bool
    default = false
}

variable "prefix" {
    description = "the prefix of the cloudfront"
    type = string
}

variable "allowed_methods" {
    description = "the allowed methods in cloudfront"
    type = list(string)
}

variable "cached_methods" {
    description = "the cached methods in cloudfront"
    type = list(string)
}

variable "query_string" {
    description = "conatains true or false"
    type = bool
}

variable "forward" {
    description = "contains whether cookies or forwaded or not"
    type = string
}

variable "price_class" {
    description = " The price class determines the price tier (edge locations) that CloudFront will use for serving your content."
    type = string
}

variable "restriction_type" {
    description = "the type of restriction for the cloudfront"
    type = string
}

variable "locations" {
    description = "the countries you want to blacklist or whitelist"
    type = list(string)
}

variable "Environment" {
    description = "the environment of the distribution"
    type = string
}

variable "cloudfront_default_certificate" {
    description = "the certification of cloudfront"
    type = bool
}

variable "min_ttl" {
    description = "the minimum value"
    type = number
}
 variable "default_ttl" {
    description = "the default value"
    type = number
 }

 variable "max_ttl" {
    description = "the maximum value"
    type = number   
}

variable "viewer_protocol_policy" {
    description = "the viewerpolicy"
    type = string
}
variable "team" {
  description = "Team name"
  type = string
}
variable "environment" {
  description = "Environment name"
  type = string
}
variable "owner" {
  description = "Owner name"
  type = string
}
variable "owner_email" {
  description = "Owner email"
  type = string
}

variable "Name" {
    description = "the name of the bucket"
    type = string
    default = "My bucket"
}
