## adding useless comment here 

output "ecs_cluster_id" {
  value = module.ecs.ecs_cluster_id
}

output "ecs_cluster_name" {
  value = module.ecs.ecs_cluster_name
}

output "api_ecr_repository_url" {
  value = module.ecs.api_ecr_repository_url
}

output "api_ecr_repository_arn" {
  value = module.ecs.api_ecr_repository_arn
}

output "ui_ecr_repository_url" {
  value = module.ecs.ui_ecr_repository_url
}

output "ui_ecr_repository_arn" {
  value = module.ecs.ui_ecr_repository_arn
}
 
output "private_subnet_ids" {
  value = module.networking.private_subnet_ids
}

output "alb_sg_id" {
  value = module.security.alb_sg_id
}



output "ecs_execution_role_arn" {
  value = module.iam.ecs_execution_role_arn
}

output "ecs_execution_role_name" {
  value = module.iam.ecs_execution_role_name
}