output "alb_arn" {
  value = aws_lb.habit_alb.arn
}

output "alb_dns_name" {
  value = aws_lb.habit_alb.dns_name
}

output "habit_api_target_group_arn" {
  value = aws_lb_target_group.habit_api_tg.arn
}

output "habit_ui_target_group_arn" {
  value = aws_lb_target_group.habit_ui_tg.arn
}

output "alb_listener_arn" {
  value = aws_lb_listener.http.arn
}

