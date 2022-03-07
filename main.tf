resource "azurerm_application_insights" "application_insights" {

  name = "${var.teamid}-${var.prjid}"

  resource_group_name = var.resource_group_name
  location            = var.location
  application_type    = var.application_insight_type
}
