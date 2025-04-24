module "table_courses" {
  source = "./modules/dynamodb"
  context = module.label.context
  name = "courses"
}

module "table_authors" {
  source = "./modules/dynamodb"
  context = module.label.context
  name = "authors"
}

module "lambda_functions" {
  source = "./modules/lambda"
  context = module.label.context
  courses_table = module.table_courses.table_name
  authors_table = module.table_authors.table_name
}