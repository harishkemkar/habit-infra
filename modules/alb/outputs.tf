output "alb_arn" {
  value = aws_lb.habit_alb.arn
}

output "alb_dns_name" {
  value = aws_lb.habit_alb.dns_name
}
