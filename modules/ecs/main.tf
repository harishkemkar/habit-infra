#useless comment 1
resource "aws_ecs_cluster" "habit_cluster" {
  name = "${var.project}-ecs-cluster"

  tags = {
    Name    = "${var.project}-ecs-cluster"
    Project = var.project
  }
}

resource "aws_ecr_repository" "habit_api_repo" {
  name                 = "${var.project}-api-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name    = "${var.project}-api-repo"
    Project = var.project
  }
}

resource "aws_ecr_repository" "habit_ui_repo" {
  name                 = "${var.project}-ui-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name    = "${var.project}-ui-repo"
    Project = var.project
  }
}
