#resource "cloudflare_r2_bucket" "gha_logs_bucket" {
# account_id = "b78b9fdd13491547180d25a3c9172b30"
#name       = "svuit-gha-logs"
#}
resource "cloudflare_r2_bucket" "gha_logs_backup_new" {
  account_id = "236c34443d0b37575866b671a040ea6f"
  name       = "svuit-gha-logs-backup"
}
resource "cloudflare_workers_kv_namespace" "links_kv_new" {
  account_id = "236c34443d0b37575866b671a040ea6f"
  title      = "links"
}
