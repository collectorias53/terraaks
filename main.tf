# main.tf

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "example" {
  name                = var.acr_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = var.acr_sku
  admin_enabled       = var.admin_enabled

  retention_policy {
    days    = var.retention_policy_days
    enabled = var.retention_policy_enabled
  }

  tags = var.tags
}
