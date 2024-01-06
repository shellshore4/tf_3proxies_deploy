variable "access_key" {
    description = "value of access key"

  
}
variable "secret_key" {
    description = "value of secret key"
  
}
variable "ami_id" {
    description = "Ubuntu"
    default = "ami-0fc5d935ebf8bc3bc"
  
}
variable "instance_count" {
    description = "NUmber of proxies"
    default = 3
  
}
variable "instance_type" {
    description = "value of instance type"
    default = "t2.micro"
}
variable "key_name" {
    description = "value of key name"
    default = "key_vms_us-east_1"
}


variable "aws_security_group" {
    description = "value of security group"
    default = "SSH_In_All_Out"
}
