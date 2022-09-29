resource "github_repository_webhook" "example" {
  repository = "ecs-test-app"

  configuration {
    url          = aws_codepipeline_webhook.example.url
    secret       = "uV5ahp5ohsa3wou8eequ"
    content_type = "json"
    insecure_ssl = false
  }

  events = ["push"]
}
