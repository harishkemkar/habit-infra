
output "ecs_cluster_id" {
  value = aws_ecs_cluster.habit_cluster.id
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.habit_cluster.name
}

output "api_ecr_repository_url" {
  value = aws_ecr_repository.habit_api_repo.repository_url
}

output "api_ecr_repository_arn" {
  value = aws_ecr_repository.habit_api_repo.arn
}

output "ui_ecr_repository_url" {
  value = aws_ecr_repository.habit_ui_repo.repository_url
}

output "ui_ecr_repository_arn" {
  value = aws_ecr_repository.habit_ui_repo.arn
}