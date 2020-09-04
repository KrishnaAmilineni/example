module "azurelb" {
  source         = "./module"
  name           = var.name
  ip_name        = var.ip_name
  lb_name        = var.lb_name
  location       = var.location
  ip_config_name = var.ip_config_name
}