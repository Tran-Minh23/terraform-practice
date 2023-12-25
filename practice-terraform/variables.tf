variable "AWS_REGION" {
  type = string
  default = "ap-southeast-2"
}

variable "ACCESS_KEY" {
  type = string
}

variable "SECRET_KEY" {
  type = string
}

variable "PATH_TO_PUBLIC_KEY" {
  type = string
  default = "./mykey.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  type = string
  default = "./mykey"
}

variable "INSTANCE_USERNAME" {
  type = string
  default = "ubuntu"
}

variable "AMIS" {
  type = map(string)
  default = {
    "ap-southeast-1" = "ami-0f74c08b8b5effa56"
    "ap-southeast-2" = "my2"
  }
}