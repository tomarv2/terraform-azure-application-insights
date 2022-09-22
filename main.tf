resource "azurerm_application_insights" "application_insights" {
  for_each = var.application_insights_config != null ? var.application_insights_config : {}

  name                = each.key
  resource_group_name = each.value.resource_group
  location            = each.value.location
  application_type    = each.value.application_type
  tags = merge(var.extra_tags, local.shared_tags)
}

