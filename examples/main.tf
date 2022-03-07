terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 2.98"
    }
  }
}

provider "azurerm" {
  features {}
}

module "app_insights" {
  source = "../"

  resource_group_name = "demo-resource_group"
  location            = "westus2"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
