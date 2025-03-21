
module "local-module" {
  source  = "./modules/submodule"
  
  # required module field
  site  = var.site
}
