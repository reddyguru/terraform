resource_group_name = "terra-client-rg"
location            = "East US"


appserviceplan_name = "terra-clientASP-Plan"
appservice_name = "terra-clientASP"
appservice_os_type = "Linux"
appservice_sku_name = "B1"


redis_name = "terra-client-redis"
family ="C"
capacity = 1
redis_sku_name="Standard"


storageaccount_name = "terraclientstgact"
act_tier = "Standard"
act_repli_type = "LRS"
storagecontainer_name = "terra-client-container"
container_access_type = "private"

