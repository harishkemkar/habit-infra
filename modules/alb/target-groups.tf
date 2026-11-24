resource "aws_lb_target_group" "habit_api_tg" {

  name        = "${var.project}-api-tg"
  port        = 8000
  protocol    = "HTTP"
  target_type = "ip"

  vpc_id = var.vpc_id

  health_check {
    enabled             = true
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    healthy_threshold   = 2
    unhealthy_threshold = 3
    interval            = 30
    timeout             = 5
  }

  tags = {
    Name = "${var.project}-api-tg"
  }
}

resource "aws_lb_target_group" "habit_ui_tg" {

  name        = "${var.project}-ui-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"

  vpc_id = var.vpc_id

  health_check {
    enabled             = true
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    healthy_threshold   = 2
    unhealthy_threshold = 3
    interval            = 30
    timeout             = 5
  }

  tags = {
    Name = "${var.project}-ui-tg"
  }
}