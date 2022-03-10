terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.9.0"
    }
  }
}
provider "aws" {
  region = "ap-southeast-1"
}
provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
  account_id = var.cloudflare_account_id
}

resource "cloudflare_worker_script" "main_script" {
  content = "${file("sample.js")}"
  name = "sample_worker"  
}

resource "cloudflare_worker_route" "catch_all_route" {
  zone_id = var.cloudflare_zone_id
  pattern = "serverlesspage.com/*"
  script_name = cloudflare_worker_script.main_script.name

 depends_on = [cloudflare_worker_script.main_script]
}
