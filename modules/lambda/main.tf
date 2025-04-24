module "label" {
  source   = "cloudposse/label/null"
  version = "0.25.0"
  context = var.context
  name = var.name
}

module "label_get_all_authors" {
  source   = "cloudposse/label/null"
  version = "0.25.0"
  context = var.context
  name = "get_all_authors"
}

module "lambda_get_all_authors" {
  source = "terraform-aws-modules/lambda/aws"
  version = "7.20.1"
  function_name = module.label_get_all_authors.id
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "nodejs18.x"

  source_path = "${path.module}/src/get-all-authors"

  environment_variables = {
    TABLE_NAME = var.authors_table
  }

  tags = module.label.tags
}