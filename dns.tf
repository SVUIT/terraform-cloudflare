data "cloudflare_zone" "zone" {
  name = "svuit.org"
}

# A records
resource "cloudflare_record" "wildcard_a" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "*"
  type    = "A"
  value   = "143.198.88.121"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "root_a_1" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "A"
  value   = "185.199.111.153"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "root_a_2" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "A"
  value   = "185.199.110.153"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "root_a_3" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "A"
  value   = "185.199.109.153"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "root_a_4" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "A"
  value   = "185.199.108.153"
  ttl     = 1
  proxied = true
}

# CAA
resource "cloudflare_record" "caa_0_issue" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "CAA"
  value   = "0 issue \"certainly.com\""
  ttl     = 1
}

# CNAMEs
resource "cloudflare_record" "cname_link" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "link"
  type    = "CNAME"
  value   = "svuit-link.pages.dev."
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "cname_quamon" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "quamon"
  type    = "CNAME"
  value   = "appwrite.network."
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "cname_sig1_domainkey" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "sig1._domainkey"
  type    = "CNAME"
  value   = "sig1.dkim.svuit.org.at.icloudmailadmin.com."
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "cname_www" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "www"
  type    = "CNAME"
  value   = "svuit.github.io."
  ttl     = 1
  proxied = true
}

# MX
resource "cloudflare_record" "mx_62" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "MX"
  value   = "route3.mx.cloudflare.net."
  priority = 62
  ttl     = 1
}

resource "cloudflare_record" "mx_77" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "MX"
  value   = "route2.mx.cloudflare.net."
  priority = 77
  ttl     = 1
}

resource "cloudflare_record" "mx_32" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "MX"
  value   = "route1.mx.cloudflare.net."
  priority = 32
  ttl     = 1
}

# NS for quamon subdomain
resource "cloudflare_record" "ns_quamon_1" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "quamon"
  type    = "NS"
  value   = "ns1.appwrite.zone."
  ttl     = 1
}

resource "cloudflare_record" "ns_quamon_2" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "quamon"
  type    = "NS"
  value   = "ns2.appwrite.zone."
  ttl     = 1
}

# TXT records
resource "cloudflare_record" "txt_acme_1" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "_acme-challenge"
  type    = "TXT"
  value   = "vYbRL5Fe6V24yhsTPp955IqzztGOkg_6cMU0IsubBhQ"
  ttl     = 1
}

resource "cloudflare_record" "txt_acme_2" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "_acme-challenge"
  type    = "TXT"
  value   = "HkvS-JtVSmn7GHG3WAEHgZ-_CZtrDnzJPkfXQZJZzdU"
  ttl     = 1
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "cf2024-1._domainkey"
  type    = "TXT"
  value   = "v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB"
  ttl     = 1
}

resource "cloudflare_record" "txt_github_pages" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "_github-pages-challenge-svuit"
  type    = "TXT"
  value   = "b388b076a4c6406e836380608c951d"
  ttl     = 1
}

resource "cloudflare_record" "txt_mail_spf" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "mail"
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  ttl     = 1
}

resource "cloudflare_record" "txt_root_spf" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  ttl     = 1
}

resource "cloudflare_record" "txt_google_verification" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "TXT"
  value   = "google-site-verification=aFrGYr9ilcgJVnJrX77yxhgKvXJ4RLrZkLE17Ak6Lh8"
  ttl     = 3600
}

resource "cloudflare_record" "txt_atlassian_verif" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "TXT"
  value   = "atlassian-domain-verification=qwe6uKk3wM2SXFZcB4pLOzNI2xABA2Dak/4pFq2kGE0mY4PSswzG97l3iwaIH0su"
  ttl     = 1
}

resource "cloudflare_record" "txt_apple_domain" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "TXT"
  value   = "apple-domain=kr4kGi7sYe28KV5h"
  ttl     = 3600
}

resource "cloudflare_record" "txt_ms_verify" {
  zone_id = data.cloudflare_zone.zone.id
  name    = "@"
  type    = "TXT"
  value   = "MS=ms67773657"
  ttl     = 1
}
