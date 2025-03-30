output "frontend_bucket_name" {
  description = "프론트엔드 S3 버킷 이름"
  value       = module.frontend_s3.bucket_name
}

output "frontend_website_url" {
  description = "프론트엔드 웹사이트 URL"
  value       = module.frontend_s3.website_url
}

output "frontend_website_endpoint" {
  description = "프론트엔드 웹사이트 엔드포인트"
  value       = module.frontend_s3.website_endpoint
}