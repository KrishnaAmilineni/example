resource "azurerm_resource_group" "example" {
  name     = var.name
  location = var.location
}

resource "azurerm_public_ip" "example" {
  name                = var.ip_name
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Static"
}

resource "azurerm_lb" "example" {
  name                = var.lb_name
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name

  frontend_ip_configuration {
    name                 = var.ip_config_name
    public_ip_address_id = azurerm_public_ip.example.id
  }
}

