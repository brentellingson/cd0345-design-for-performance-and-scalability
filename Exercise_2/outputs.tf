# TODO: Define the output variable for the lambda function.
output "greet_lambda_json" {
  description = "JSON with all returned attributes of the greet-lambda function"
  value       = aws_lambda_function.greet_lambda
}

output "greet_lambda_arn" {
  description = "ARN of the greet-lambda function"
  value       = aws_lambda_function.greet_lambda.arn
}
