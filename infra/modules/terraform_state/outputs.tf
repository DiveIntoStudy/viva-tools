output "state_bucket_name" {
  description = "테라폼 상태를 저장하는 S3 버킷 이름"
  value       = aws_s3_bucket.terraform_state.id
}

output "state_bucket_arn" {
  description = "테라폼 상태 S3 버킷 ARN"
  value       = aws_s3_bucket.terraform_state.arn
}

output "dynamodb_table_name" {
  description = "테라폼 상태 잠금에 사용되는 DynamoDB 테이블 이름"
  value       = aws_dynamodb_table.terraform_locks.name
}

output "dynamodb_table_arn" {
  description = "테라폼 상태 잠금 DynamoDB 테이블 ARN"
  value       = aws_dynamodb_table.terraform_locks.arn
}