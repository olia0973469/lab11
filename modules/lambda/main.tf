module "label" {
  source   = "cloudposse/label/null"
  version = "0.25.0"
  context = var.context
  name = var.name
}

module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"
  version = "7.20.1"
  function_name = module.label.id
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.12"

  source_path = "../src/lambda-function1"

  tags = module.label.tags
}