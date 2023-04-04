terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 3.21.1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "application_insights" {
  source = "../"

  config = {
    "security-dev-security-base" = {
      resource_group   = "<resource_group_name>"
      location         = "westus2"
      application_type = "web"
    }
  }
}
