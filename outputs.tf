## adding useless comment here 

output "ecs_cluster_id" {
  value = module.ecs.ecs_cluster_id
}

output "ecs_cluster_name" {
  value = module.ecs.ecs_cluster_name
}

output "ecr_repository_url" {
  value = module.ecs.ecr_repository_url
}

output "ecr_repository_arn" {
  value = module.ecs.ecr_repository_arn
  }


 
output "private_subnet_ids" {
  value = module.networking.private_subnet_ids
}

output "alb_sg_id" {
  value = module.security.alb_sg_id
}

output "alb_target_group_arn" {
  value = module.alb.alb_target_group_arn
}