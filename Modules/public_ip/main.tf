resource "azurerm_public_ip" "pip" {
  count               = var.enabled ? 1 : 0
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = "Static"
  sku                 = var.sku
}
