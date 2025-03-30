output "bucket_name" {
  description = "생성된 S3 버킷 이름"
  value       = aws_s3_bucket.website_bucket.id
}

output "bucket_arn" {
  description = "S3 버킷 ARN"
  value       = aws_s3_bucket.website_bucket.arn
}

output "website_endpoint" {
  description = "S3 웹사이트 엔드포인트"
  value       = aws_s3_bucket_website_configuration.website_bucket_config.website_endpoint
}

output "website_domain" {
  description = "S3 웹사이트 도메인"
  value       = aws_s3_bucket_website_configuration.website_bucket_config.website_domain
}

output "website_url" {
  description = "S3 웹사이트 URL"
  value       = "http://${aws_s3_bucket_website_configuration.website_bucket_config.website_endpoint}"
}