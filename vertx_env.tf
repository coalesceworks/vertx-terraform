provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}


resource "aws_instance" "vertx" {
  ami           = "ami-3755bd4d"
  instance_type = "t2.micro"
  key_name 		=	"vertx_rsa"
}

resource "aws_launch_configuration" "vertx" {
  name_prefix   = "terraform-vertx-hosts-"
  image_id = "ami-3755bd4d" 
  instance_type = "t2.micro"
  lifecycle {
    create_before_destroy = true
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo curl https://releases.rancher.com/install-docker/17.05.sh | sudo sh
    sudo ${rancher_registration_token.rancher-token.command}
    EOF
}

resource "aws_iam_user" "user" {
  name = "ubuntu"
  path = "/"
}

resource "aws_key_pair" "deployer" {
  key_name   = "vertx_rsa"
  public_key = "${var.aws_node_public_key}"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.vertx.id}"
}

output "ip" {
  value = "${aws_eip.ip.public_ip}"
}