variable "region" {
    default = "eu-west-1"
}
variable "aws_profile" {
    default = "cloud9"
    description = "configure AWS CLI profile"
}
variable "cloud9_environment" {
    default = "test"
}
variable "cloud9_instance_type" {
    default = "t2.micro"
}
variable "cloud9_automatic_stop_time" {
    type = int
    default = 30
}
