# locals {

# lob_info = var.standard.lobs[var.lob]

# app_env = var.application_environment
# ent_env = var.enterprise_environment

# my_env = var.spec.environments[local.app_env]
# my_mg_id = local.my_env.management_group

# regions_info = { for v in [ "primary", "secondary" ] : v => {
# 	dns_friendly_name = var.standard.azure_regions[var.spec.regions[v]].dns_friendly_name
# 	location = var.standard.azure_regions[var.spec.regions[v]].location
# 	short_name = var.standard.azure_regions[var.spec.regions[v]].short_name
# } }

# # Use this variable to iterate regions on resources that need to always exist whether its Geo Active or not
# my_regions = merge(
# 	{ "primary" = var.spec.regions["primary"] },
# 	(local.my_env.geo ? { "secondary" = var.spec.regions["secondary"] } : {}),
# )
# # Use this variable to iterate regions on resources that can be built as needed in the secondary region (prior to a DR test)
# my_active_regions = merge(
# 	{ "primary" = var.spec.regions["primary"] },
# 	(lookup(local.my_env, "geo_active", false) ? { "secondary" = var.spec.regions["secondary"] } : {}),
# )

# my_regions_by_short_name = { for k, v in local.my_regions : local.regions_info[k].short_name => v }
# my_active_regions_by_short_name = { for k, v in local.my_active_regions : local.regions_info[k].short_name => v }

# private_dns_zones = { for k, v in local.my_regions : k => "${local.app_env}.${local.my_env.geo ? "${v.dns_friendly_name}." : ""}${var.spec.dns.parent_private_dns_zone}" }

# base_firewall_allow = {
# 	ips = []
# 	subnet_ids = concat(
# 		[
# 			var.agent_pool.subnet_id
# 		]
# 	)
# }
# address_prefixes = { for k, v in local.my_regions : k => local.my_env.vwan_hub_address_prefixes[k] }

# tags = null

# }
