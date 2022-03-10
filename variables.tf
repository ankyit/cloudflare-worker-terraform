variable "cloudflare_zone_id" {
    type = string
    description = "CloudFlare ZoneID"
    default = ""
}

variable "cloudflare_account_id" {
    type = string
    description = "CloudFlare AccountID"
    default = ""
}

variable "zone" {
  default = "demo.serverless.pages"
}
variable "cloudflare_email" {
    type = string
    description = "cloudflare email"
    default = ""
}

variable "cloudflare_api_key" {
    type = string
    description = "api key"
    default = ""
  
}