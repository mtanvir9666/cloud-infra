# Tell terraform that you are going to be using "aws" provider and you want to deploy your infrastructure in a specific region
provider "aws" {
	region = "us-east-1"
}

# provider_type NAME
resource "aws_instance" "example" {
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"

  tags = {
	Name = "terraform-example"
  }
}

