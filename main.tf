terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>2.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "devops-sk"
    storage_account_name = "devopssksa01"
    container_name       = "tf-sa-container01"
    key                  = "sk_root/terraform.tfstate"
  }

}

provider "azurerm" {
    features {}
}
