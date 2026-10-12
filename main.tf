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
resource "cloudflare_record" "terraform_managed_resource_577cccb99c0f6d24a49673b91f337d99_0" {
  content = "143.198.88.121"
  name    = "*.svuit.org"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_a9750677351ac9fd1c1493b286d5ec7d_1" {
  content = "185.199.111.153"
  name    = "svuit.org"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_e3ff9cbc59e8613621291769984bd97d_2" {
  content = "185.199.110.153"
  name    = "svuit.org"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_c051c647a9392532d8e8498e668d7bf5_3" {
  content = "185.199.109.153"
  name    = "svuit.org"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_629fcb09fd12faa65e06c37831946a5e_4" {
  content = "185.199.108.153"
  name    = "svuit.org"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_17dc3ffc246ed60e8fa0ef8c5e8bc4d4_5" {
  name    = "svuit.org"
  proxied = false
  ttl     = 1
  type    = "CAA"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  data {
    flags = 0
    tag   = "issue"
    value = "certainly.com"
  }
}

resource "cloudflare_record" "terraform_managed_resource_35dc468b4dfa7fc7d24cc9885305a5d5_6" {
  content = "svuit-sink-new.study-vault-of-uit.workers.dev"
  name    = "links.svuit.org"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_32a4559105d88bdadde4e448d0ef2afb_7" {
  content = "appwrite.network"
  name    = "quamon.svuit.org"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_e055a2fc9392c8f0c49a3d570a193d3f_8" {
  content = "sig1.dkim.svuit.org.at.icloudmailadmin.com"
  name    = "sig1._domainkey.svuit.org"
  proxied = false
  ttl     = 3600
  type    = "CNAME"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_d992f6f40dc5af5944c278ded47d96f5_9" {
  content = "svuit.github.io"
  name    = "www.svuit.org"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_0c81cf80b98774989537f64a930d6c94_10" {
  content  = "route3.mx.cloudflare.net"
  name     = "svuit.org"
  priority = 62
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_f4682de9322d9db6d954af425c4b582a_11" {
  content  = "route2.mx.cloudflare.net"
  name     = "svuit.org"
  priority = 77
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_734d9e8cce26a51e7cb0e8158319114d_12" {
  content  = "route1.mx.cloudflare.net"
  name     = "svuit.org"
  priority = 32
  proxied  = false
  ttl      = 1
  type     = "MX"
  zone_id  = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_8dd1a6bb325f3c9e9ce1faa786176f46_13" {
  content = "ns1.appwrite.zone"
  name    = "quamon.svuit.org"
  proxied = false
  ttl     = 1
  type    = "NS"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_124ec04349656036fb08d84373877ca8_14" {
  content = "ns2.appwrite.zone"
  name    = "quamon.svuit.org"
  proxied = false
  ttl     = 1
  type    = "NS"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_638b5ffbedce1a68a8dfb45ae7990f14_15" {
  content = "\"vYbRL5Fe6V24yhsTPp955IqzztGOkg_6cMU0IsubBhQ\""
  name    = "_acme-challenge.svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_d3cd38e0d17949ac4d59f693429a3263_16" {
  content = "\"HkvS-JtVSmn7GHG3WAEHgZ-_CZtrDnzJPkfXQZJZzdU\""
  name    = "_acme-challenge.svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_c09d0005450d5205d45e788c865981de_17" {
  content = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name    = "cf2024-1._domainkey.svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_0c458325df842c244ef7ee774a128c20_18" {
  content = "\"b388b076a4c6406e836380608c951d\""
  name    = "_github-pages-challenge-svuit.svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_423c6e7852b9b99b190ab3bc010b8e58_19" {
  content = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name    = "mail.svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}

resource "cloudflare_record" "terraform_managed_resource_cccfc79527c39f4224fdd11a45ef1ce3_20" {
  content = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name    = "svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_ffb0e4b9f3c7a418cc006025c4111c27_21" {
  content = "\"google-site-verification=aFrGYr9ilcgJVnJrX77yxhgKvXJ4RLrZkLE17Ak6Lh8\""
  name    = "svuit.org"
  proxied = false
  ttl     = 3600
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_afc677167d7a199652b7206c6098bf2e_22" {
  content = "\"atlassian-domain-verification=qwe6uKk3wM2SXFZcB4pLOzNI2xABA2Dak/4pFq2kGE0mY4PSswzG97l3iwaIH0su\""
  name    = "svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_11a801b0cce6e5542b9a375f269763f4_23" {
  content = "\"apple-domain=kr4kGi7sYe28KV5h\""
  name    = "svuit.org"
  proxied = false
  ttl     = 3600
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_ed0d22f26a8f61a8e8865f71cdcaab67_24" {
  content = "\"MS=ms67773657\""
  name    = "svuit.org"
  proxied = false
  ttl     = 1
  type    = "TXT"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
}

resource "cloudflare_record" "terraform_managed_resource_c147bd0acd03a53748a40a63a43debbd_25" {
  content = "100::"
  name    = "link.svuit.org"
  proxied = true
  ttl     = 1
  type    = "AAAA"
  zone_id = "22ea5079f0215ea16e47860ee1e4fcd1"
  allow_overwrite = false
}
