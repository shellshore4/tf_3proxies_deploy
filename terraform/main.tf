provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.instance_count}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    security_groups = [var.aws_security_group]
    tags = {
        Name = "3Proxy"
        Environment = "Prod"
    }
  
}


output "ansible_inventory" {
  value = <<-EOF
  [ec2]
  ${join("\n", aws_instance.ec2_instance[*].public_ip)}
  EOF
}

