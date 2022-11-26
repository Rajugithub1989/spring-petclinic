# variable "region" { default = "us-east-2" }
# variable "environment" { default = "" }
# variable "project" { default = "javaweb" }
# variable "platform" { default = "Devops" }
# variable "vpc_id" { default = "vpc-072ecaa60abe662d4" }
# variable "team" { default = "devops4solutions" }

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}
variable "access_key" {
  description = "AWS access key to launch servers."
  default     = "AKIA2Q5WYMS4URC37CPB"
}
variable "secret_key" {
  description = "AWS secret key to launch servers."
  default     = "DiQCC5LuWpmqcK044Mij1kGkTgqTFl2+RbmKPytl"
}
variable "project" {
  description = "AWS region to launch servers."
  default     = "petclinic"
}
variable "environment" {
  description = "Targeted Depolyment environment"
  default     = ""
}
variable "platform" {
  description = "Targeted Depolyment environment"
  default     = "Devops"
}
variable "vpc_id" {
  description = "Targeted Depolyment environment"
  default     = "vpc-08ef93f588bc12a46"
}
variable "team" {
  description = "Targeted Depolyment environment"
  default     = "vpc-072ecaa60abe662d4"
}
variable "petclinic_project_repository_name" {
  description = "Petclinic Project Repository name to connect to"
  default     = "DevSecOps"
}
variable "petclinic_project_repository_branch" {
  description = "Petclinic Project Repository branch to connect to"
  default     = "master"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "mp-aws-cicd-artifacts-bucket"
}

variable "aws_ecs_cluster_name" {
  description = "Target Amazon ECS Cluster Name"
  default     = "Petclinic-ecs-Cluster"
}

variable "aws_ecs_petclinic_service_name" {
  description = "Target Amazon ECS Cluster NodeJs App Service name"
  default     = "PetclinicService"
}
