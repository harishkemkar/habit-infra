
output "ecs_cluster_id" {
  value = aws_ecs_cluster.habit_cluster.id
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.habit_cluster.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.habit_repo.repository_url
}

output "ecr_repository_arn" {
  value = aws_ecr_repository.habit_repo.arn
}
