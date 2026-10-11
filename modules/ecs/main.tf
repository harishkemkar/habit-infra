resource "aws_ecs_cluster" "habit_cluster" {
  name = "${var.project}-ecs-cluster"
  tags = { Name = "${var.project}-ecs-cluster" }
}
