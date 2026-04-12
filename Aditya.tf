variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "demo-rg"
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.gnet.name
  address_prefixes     = ["10.0.1.6/28"]
}