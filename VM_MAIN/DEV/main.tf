module "rgmodule" {
  source = "../../VM_RG"
  rg26june01 = var.rg26june
}

module "stormodule" {
    depends_on = [ module.rgmodule ]
  source = "../../VM_Storage_Account"
  stor26june001 = var.stor26june
}

module "vnetmodule" {
  depends_on = [ module.rgmodule ]
  source = "../../VM_Virtual_Network"
  vnet26june001 = var.vnet26june
}

module "subnetmodule" {
  depends_on = [ module.rgmodule , module.vnetmodule ]
  source = "../../VM_Subnet"
  subnet26june001 = var.subnet26june
}

module "pipmodule" {
  depends_on = [ module.rgmodule ]
  source = "../../VM_Public_IP"
  pip26june001 = var.pip26june
}

module "nicmodule" {
  source = "../../VM_Nic"
  nic26june001 = var.nic26june
  depends_on = [ module.subnetmodule , module.pipmodule ]
}

module "vmmodule" {
  source = "../../VM_Virtual_MAchine"
  vm26june001 = var.vm26june
  depends_on = [ module.nicmodule , module.rgmodule ]
}

# module "keyvaultmodule" {
#   source = "../../VM_Valut"
#   keyvault30 = var.key30june
#  depends_on = [module.rgmodule]
# }

# module "keysecretmodule" {
#   source = "../../VM_Vault_Secret"
#   keysecretuser = var.keyuser30
#   depends_on = [module.keyvaultmodule]
  
# }

module "SQLServermodule" {
  source = "../../SQL_Date_Server"
  dataserver30 = var.dataserver30june
  depends_on = [ module.rgmodule ]
}

module "databasemodule" {
  source = "../../SQL_Data_Base"
  depends_on = [ module.SQLServermodule ]
  database01 = var.database30
}

