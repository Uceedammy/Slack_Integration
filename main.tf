resource "azurerm_resource_group" "West_Europe" {
  name     = "WestEuropeResourceGroup"
  location = "West Europe"
}

resource "azurerm_virtual_network" "barry_vnet" {
  name                = "barryVNet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.West_Europe.location
  resource_group_name = azurerm_resource_group.West_Europe.name
}