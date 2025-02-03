variable "region" {
  type = string
  description = "Provide aws region"
}

variable "vpc_cidr" {
  type = string
  description = "Provide cidr block"
}

variable "subnet_cidr" {
  type = list(object({
    cidr = string
    subnet_name = string
  }))
}