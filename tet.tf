provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "RS1" {
  name     = "FirstRS1"
  location = "US - West"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "Vnet1" {
  name                = "Firstvnet1"
  resource_group_name = azurerm_resource_group.RS1.name
  location            = azurerm_resource_group.RS1.location
  address_space       = ["10.0.0.0/16"]
}