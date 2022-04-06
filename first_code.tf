provider "aws" {
	profile = "default"
	region  = "us-east-1"
}

data "aws_ami" "windows" {
	most_recent = true

filter {
	name = "name"
	values = ["Windows_Server-2019"]
 }
}

resource "aws_instance" {
	ami = "ami-0f9a92942448ac56f"
	instance_type = "t2.micro"

}




