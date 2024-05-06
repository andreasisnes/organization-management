terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.48.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.100.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  backend "azurerm" {
    use_azuread_auth = true
  }
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
provider "azurerm" {
  use_oidc = true
  features {} # Required
}

# https://registry.terraform.io/providers/integrations/github/latest/docs
provider "github" {
  owner = local.file_content.organization
  app_auth {} # Required
}

locals {

}

data "azurerm_client_config" "current" {}

data "azurerm_storage_account" "st" {
  name                = var.arm_storage_account_name
  resource_group_name = var.arm_resource_group_name
}

data "azurerm_storage_container" "github_container" {
  name                 = "github"
  storage_account_name = data.azurerm_storage_account.st.name
}
