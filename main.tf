resource "azurerm_application_insights" "application_insight" {

  name = "${var.teamid}-${var.prjid}"

  resource_group_name = var.resource_group_name
  location            = var.location
  application_type    = var.application_insight_type

  # depends_on = [null_resource.resource_group_setup]
}

/*
resource "null_resource" "resource_group_setup" {
  # Resource Group creation is eventually consistent, so add a delay.
    provisioner "local-exec" {
    command = <<EOT
      echo "sleeping for 30 seconds...";
      sleep 30;
      echo "completing sleep";
    EOT
    }
}
*/
