module "network" {
 source = "./modules/network"
}

module "compute" {
 source = "./modules/compute"
 vpc10_id = module.network.vpc10_id
 vpc20_id = module.network.vpc20_id
 subnet_pb_id10 = module.network.subnet_pb_id10
 subnet_pvt_id10 = module.network.subnet_pvt_id10
 subnet_pb_id20 = module.network.subnet_pb_id20
 subnet_pvt_id20 = module.network.subnet_pvt_id20 
}