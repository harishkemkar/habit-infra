resource "aws_dynamodb_table" "habit_table" {
  name           = "${var.project}-habits"
  billing_mode   = "PAY_PER_REQUEST"  # auto‑scaling, no manual capacity
  hash_key       = "user_id"
  range_key      = "habit_id"

  attribute {
    name = "user_id"
    type = "S"
  }

  attribute {
    name = "habit_id"
    type = "S"
  }

  tags = {
    Name    = "${var.project}-habits"
    Project = var.project
  }
}
