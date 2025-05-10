output "lambda_courses_invoke_arn" {
  value = module.lambda_get_course.lambda_function_invoke_arn
}

output "lambda_get_all_authors_invoke_arn" {
  value = module.lambda_get_all_authors.lambda_function_invoke_arn
}