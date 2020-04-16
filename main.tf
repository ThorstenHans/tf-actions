provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_demo" {
  name     = "rg_demo"
  location = "westeurope"
  tags = {
    responsible = "Thorsten Hans"
    app         = "2nd Webinar Demo"
  }
}

resource "azurerm_application_insights" "ai" {
  name                = "ai_demo"
  resource_group_name = azurerm_resource_group.rg_demo.name
  location            = azurerm_resource_group.rg_demo.location
  application_type    = "web"
}
