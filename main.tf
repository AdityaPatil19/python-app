terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "AKXXXXX"
  secret_key = "MEqXXXXXXX1uihR"
}

resource "aws_instance" "app_server" {
  ami           = "ami-06eecef118bbf9259"
  instance_type = "t2.micro"
  key_name= "aws_key_1"

  tags = {
    Name = "app_2"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws_key_1"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5e+7m+vSqJbvLfa4eB4/awmIDjzBw9Wbs24OoFM36xXq8VZ+to42sDbh+l7hcor90dOzoMwJsiMhDYlWpHwjAcOMqgcjyUI6pvBdKEnu75kqxUdx6KlsQ/lEoR/haoM47jJKV+S8tJs90pxmTfTIFyGwcpeh/Ed7iliJ9MIF3hpmwxSPea/mBdl1mKeSDFzOvTwI2LvShkTFc4RxfVPaqGVql5u42N2eK40b04/pBfQ/8/vDSunfRPzyTbPlhyoLvqjyilM7vrS1eBI3suEZ8/AQOnEXcuZLFhRSMWM5hormKn/y4aL3IbuCUq0dK7HPkYlkxoeVzm9BP6yaqjfnlNHIm6KT0HJ+RiqgimjacR0KQsfbrmja6LBTz/1AYjs35Wx2V2IJarTMEWw4LIOuliMWevP5cPQAhtO5IgSjthRK2MSmCqhAc8T/Dr0WpDoI2yoTNwR27GPC8KgE4Crwa/X6RFj620xC3/EoBd5sxjZsJUXnLs1cTsvvVT+5uDrs= aditya@DESKTOP-OHEGJUU"
}
