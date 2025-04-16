module "label_courses" {
  source   = "cloudposse/label/null"
  version = "0.25.0"
  context = module.label.context
  name = "courses"
}

module "label_author" {
  source   = "cloudposse/label/null"
  version = "0.25.0"
  context = module.label.context
  name = "author"
}

resource "aws_dynamodb_table" "courses" {
  name             = module.label_courses.id
  hash_key         = "TestTableHashKey"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }
}

resource "aws_dynamodb_table" "author" {
  name             = module.label_author.id
  hash_key         = "TestTableHashKey"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }
}