// Basic infra deployments for CICD testing
resource "azurerm_resource_group" "test_rg" {
  name     = "Temp-RG"
  location = "East US"
}

resource "azurerm_virtual_network" "test_vnet" {
  name                = "Test-VNet"
  location            = "East US"
  resource_group_name = "Temp-RG"

  address_space = ["10.0.0.6/16"]

}