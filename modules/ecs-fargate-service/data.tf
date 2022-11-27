data "aws_caller_identity" "current" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
  filter {
    name   = "state"
    values = ["available"]
  }
 #vpc_id = data.aws_vpc.selected.id
 tags = {
    Name = "*Public*"
  }
}


data "aws_availability_zones" "zones" {
  state = "available"
}