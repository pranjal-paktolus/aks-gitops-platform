resource "azurerm_resource_group" "rg" {
  name     = "aks-gitops-rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "gitops-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "gitopsaks"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}
