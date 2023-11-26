terraform{
    backend "azurerm" {
      resource_group_name = "dws-devops-test"
      storage_account_name = "dwstfstatestgacc"
      container_name = "tfstate-bucket-dws"
    }
}