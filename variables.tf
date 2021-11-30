### MANDATORY ###
variable "role_tag" {
  description = "Role of the ec2 instance, defaults to <SERVICE>"
  default = "SERVICE"
}

variable "environment_tag" {
  description = "Role of the ec2 instance, defaults to <DEV>"
  default = "DEV"
}

variable "costcenter_tag" {
  description = "Role of the ec2 instance, defaults to <DEV>"
  default = "DEV"
}

# group our resources
variable "stream_tag" {
  default = "default"
}

variable "environment" {
  default = "default"
}

variable "es_environment" {
  default = "elasticsearchenv"
}

variable "es_cluster" {
  description = "Name of the elasticsearch cluster, used in node discovery"
  default = "elasticsearch"
}

###################################################################
# AWS configuration below
###################################################################
variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default = "elastic"
}

### MANDATORY ###
variable "iam_profile" {
  description = "Elasticsearch IAM profile"
  default = "Ec2access"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "ap-southeast-2"
}

#variable "availability_zones" {
#  description = "AWS region to launch servers."
# default = "ap-southeast-2a,ap-southeast-2b"
#}

variable "security_group_name" {
  description = "Name of security group to use in AWS."
  default = "sg-159c855c"
}

###################################################################
# Vpc configuration below
###################################################################

### MANDATORY ###
variable "vpc_id" {
  description = "VPC id"
  default = "vpc-a11e07c6"
}

variable "internal_cidr_blocks"{
  default = "0.0.0.0/0"
}

###################################################################
# Subnet configuration below
###################################################################

### MANDATORY ###
#variable "subnets" {
#  description = "subnets to deploy into"
#  default = ["subnet-47c30221","subnet-6e639026"]
#}

###################################################################
# Elasticsearch configuration below
###################################################################

### MANDATORY ###
# Amazon Linux elasticsearch ami built by packer
# See https://github.com/nadnerb/packer-elastic-search
variable "ami" {
  default = "i-0c586a32623b98525"
   
}


variable "instance_type" {
  description = "Elasticsearch instance type."
  default = "t2.medium"
}

### MANDATORY ###
#variable "es_environment" {
 # description = "Elastic environment tag for auto discovery"
#}

# total number of nodes
variable "instances" {
  description = "total instances"
  default = "2"
}

#DEPRECATED
# number of nodes in zone a
variable "subnet_a_num_nodes" {
  description = "Elastic nodes in a"
  default = "1"
}

#DEPRECATED
# number of nodes in zone b
variable "subnet_b_num_nodes" {
  description = "Elastic nodes in b"
  default = "1"
}

# the ability to add additional existing security groups. In our case
# we have consul running as agents on the box
variable "additional_security_groups" {
  default = ["sg-159c855c"]
}

variable "volume_name" {
  default = "/dev/sdh"
}

variable "volume_size" {
  default = "10"
}

variable "volume_encryption" {
  default = true
}

variable "elasticsearch_data" {
  default = "/opt/elasticsearch/data"
}

# default elasticsearch heap size
variable "heap_size" {
  default = "256m"
}

###################################################################
# Consul configuration below
###################################################################

### MANDATORY ###
variable "dns_server" {
  default="ip-172-31-33-207.ap-southeast-2.compute.internal"
}

variable "consul_dc" {
  default = "dev"
}

variable "atlas" {
  default = "example/atlas"
}

### MANDATORY ###
variable "encrypted_atlas_token" {
  default = "AQICAHhbeuIdZQNznHhaDcQqzUNHtwXO3+Id1YOEYwDaKXcYRgErIjuCgTAikdZ6qNmjakYqAAAAXzBdBgkqhkiG9w0BBwagUDBOAgEAMEkGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMPJTLVp3FfbscEOxsAgEQgByrk1kadTzHGLlQ03NUByWlXJXL3CgOa9gZvdJq"
}

#variable "vpc_zone_identifier" {
#  default = ["subnet-47c30221","subnet-6e639026"]
#}