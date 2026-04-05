module "rg" {
    source = "../../Module/RG"
    rg_name = var.rg_name
    
}






module "vnet" {
    depends_on = [ module.rg ]
    source = "../../Module/Vnet"
    vnets = var.vnets
}

module "public_ip" {
    depends_on = [ module.rg ]
    source = "../../Module/PIP"
    public_ips = var.public_ips
}

module "vms" {
    depends_on = [ module.vnet, module.public_ip ]
  source = "../../Module/Virtual_Compute"
   vms = var.vms

}

module "kv" {
    depends_on = [ module.rg ]
    source = "../../Module/KV"
    keyvaults = var.myvaults
}