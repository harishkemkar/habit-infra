resource "aws_lb_listener" "http" {

  load_balancer_arn = aws_lb.habit_alb.arn

  port     = 80
  protocol = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.habit_ui_tg.arn
  }
}