resource "cloudflare_zone" "this" {
  account = {
    id = data.cloudflare_accounts.this.result[0].id
  }
  name = var.domain
  type = var.type
}

resource "cloudflare_zone_setting" "this" {
  for_each = var.settings

  zone_id    = cloudflare_zone.this.id
  setting_id = each.key
  value      = each.value
}

resource "cloudflare_bot_management" "this" {
  zone_id               = cloudflare_zone.this.id
  auto_update_model     = var.bot_management.auto_update_model
  enable_js             = var.bot_management.enable_js
  is_robots_txt_managed = var.bot_management.is_robots_txt_managed
}
