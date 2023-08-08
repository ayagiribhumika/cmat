provider "aws" {
  access_key = "AKIAYSB6CRYERCSPCJXN"
  secret_key = "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"
  region     = "us-east-1"  # Set the appropriate region here
}

resource "aws_instance" "ansibleinstall" {
  ami = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"  # put instance type
  key_name = "cmat-rsa"

  user_data = file("ansibleinstall.sh")



  tags = {
    Name = "ba-proj2"
  }
  
}