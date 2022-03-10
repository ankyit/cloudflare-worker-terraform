terraform {
  backend "s3" {
    bucket = "aws-cf-jenkins-test"
    key    = "jenkins-test/workers/terraform.tfstate"
    region = "ap-southeast-1"
  }
}