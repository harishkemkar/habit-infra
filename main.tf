#useless comment 1 
# Fetch available AZs dynamically from the region set in AWS_DEFAULT_REGION
data "aws_availability_zones" "available" {}

module "networking" {
  source               = "./modules/networking"
  project              = "habit"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

  # Pass the dynamically discovered AZs instead of hardcoding
  azs = data.aws_availability_zones.available.names
}



module "dynamodb" {
  source  = "./modules/dynamodb"
  project = "habit"
}


output "debug_dynamodb_module_loaded" {
  value = module.dynamodb.dynamodb_table_name
  description = "If this shows up, the DynamoDB module was executed"
}

