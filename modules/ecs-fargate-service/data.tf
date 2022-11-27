data "aws_caller_identity" "current" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
  default = true
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
  filter {
    name   = "default-for-az"
    values = [true]
  }
  filter {
    name   = "state"
    values = ["available"]
  }
data "aws_subnet" "public" {
  for_each = { for index, subnetid in data.aws_subnets.public.ids : index => subnetid }
  id       = each.value
}
 #vpc_id = data.aws_vpc.selected.id
 tags = {
    Name = "*Public*"
  }
}



data "aws_availability_zones" "zones" {
  state = "available"
}