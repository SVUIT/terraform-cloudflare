terraform {
  backend "s3" {
    bucket = "ten-bucket-r2-cua-team" # Tên bucket team
    key    = "terraform.tfstate"      # Tên file state

    endpoint                   = "https://<account_id>.r2.cloudflarestorage.com" #thay account id
    region                     = "us-east-1"
    skip_region_validation     = true
    skip_requesting_account_id = true
    skip_s3_checksum           = true
    skip_metadata_api_check    = true
  }
}
