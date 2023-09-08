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

variable "AMIS" {
  type = map(string)
  default = {
    "ap-southeast-1" = "ami-0db1894e055420bc0"
    "ap-southeast-2" = "my2"
  }
}