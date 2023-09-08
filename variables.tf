variable "AWS_REGION" {
  type = string
  default = "ap-southeast-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    "ap-southeast-1" = "my1"
    "ap-southeast-2" = "my2"
  }
}