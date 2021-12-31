provider "aws" {
  # note: read credentials from "~/.aws/credentials" file; don't put them in github
  profile = "udacity"
  region  = var.aws_region
}

# role for greet-lambda function with an inline policy to enable cloudwatch logging
resource "aws_iam_role" "greet_lambda_role" {
  name = "greet-lambda-role"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Principal" : {
          "Service" : "lambda.amazonaws.com"
        },
        "Effect" : "Allow",
        "Sid" : ""
      }
    ]
  })

  inline_policy {
    name = "greet-lambda-cloudwatch-policy"
    policy = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Action" : [
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
          ],
          "Resource" : "arn:aws:logs:*:*:*",
          "Effect" : "Allow"
        }
      ]
    })
  }
}

resource "aws_lambda_function" "greet_lambda" {
  function_name = "greet-lambda"
  role          = aws_iam_role.greet_lambda_role.arn

  filename         = "greet_lambda.zip"
  source_code_hash = filebase64sha256("greet_lambda.zip")

  runtime = "python3.9"
  handler = "greet_lambda.lambda_handler"

  environment {
    variables = {
      greeting = "Grüß Gott"
    }
  }
}
