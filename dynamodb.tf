resource "aws_dynamodb_table" "table1" {
  name             = "table1"
  hash_key         = "TestTableHashKey"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }
}

module "eg_prod_bastion_label" {
  source = "cloudposse/label/terraform"

  version = "0.8.0"
  namespace  = "eg"
  stage      = "prod"
  name       = "bastion"
  attributes = ["public"]
  delimiter  = "-"

  tags = {
    "BusinessUnit" = "XYZ",
    "Snapshot"     = "true"
  }
}