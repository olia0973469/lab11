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

#module "table_get_all_courses" {
#  source = "./modules/lambda"
#  context = module.label.context
#  name = "table_get_all_courses"
#}

module "table_get_all_authors" {
  source = "./modules/lambda"
  context = module.label.context
  name = "table_get_all_authors"
}