provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_demo" {
  name     = "rg_demo"
  location = "westeurope"
  tags = {
    responsible = "Thorsten Hans"
  }
}
