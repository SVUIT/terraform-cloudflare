terraform {
  required_version = ">= 1.0.0"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0" # version cua cloudflare provider
    }
  }
}

provider "cloudflare" {
  # lấy token từ biến môi trường CLOUDFLARE_API_TOKEN
}
