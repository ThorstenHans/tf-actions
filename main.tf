provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_demo" {
  name     = "rg_demo"
  location = "westeurope"
  tags = {
    responsible = "Thorsten Hans"
    app         = "Terraform GitHub Actions"
  }
}

resource "azurerm_application_insights" "ai_demo" {
  name                = "ai_demo"
  resource_group_name = azurerm_resource_group.rg_demo.name
  location            = azurerm_resource_group.rg_demo.location
  tags                = azurerm_resource_group.rg_demo.tags
  application_type    = "web"
}
