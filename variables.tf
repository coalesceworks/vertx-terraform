variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "vertx_aws_instance_type" {
	default	=	"t2.micro"
}
variable "vertx_aws_node_public_key" {}
variable "vertx_aws_ami" {}