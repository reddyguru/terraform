module "resourcegroup" {
    source = "./modules/resourcegroup"
    resource_group_name=var.resource_group_name
    lctn = var.lct
    resource_group_tag_1 = var.rg_tag_1
}


module "rediscache" {
    depends_on = [module.resourcegroup]
    source = "./modules/rediscache"
    location = var.location
    resource_group_name = var.resource_group_name
    capacity = var.capacity
    family = var.family
    redis_name = var.redis_name
    redis_sku_name=var.redis_sku_name
}

module "storageaccount" {
    depends_on = [module.resourcegroup]
    source = "./modules/storageaccount"
    location = var.location
    resource_group_name = var.resource_group_name
    act_tier = var.act_tier
    act_repli_type =var.act_repli_type
    storageaccount_name = var.storageaccount_name
    storagecontainer_name = var.storagecontainer_name
    container_access_type =var.container_access_type
}

module "appservice" {
    depends_on = [module.resourcegroup]
    source = "./modules/appservice"
    location = var.location
    appservice_sku_name = var.appservice_sku_name
    appservice_os_type = var.appservice_os_type
    resource_group_name = var.resource_group_name
    appserviceplan_name = var.appserviceplan_name
    appservice_name = var.appservice_name
}
