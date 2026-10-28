#useless comment 1
resource "aws_ecs_cluster" "habit_cluster" {
  name = "${var.project}-ecs-cluster"

  tags = {
    Name    = "${var.project}-ecs-cluster"
    Project = var.project
  }
}

# ECR Repository for storing Docker images
resource "aws_ecr_repository" "habit_repo" {
  name                 = "${var.project}-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name    = "${var.project}-repo"
    Project = var.project
  }
}
