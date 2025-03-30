variable "state_bucket_name" {
  description = "테라폼 상태 파일을 저장할 S3 버킷 이름"
  type        = string
}

variable "dynamodb_table_name" {
  description = "테라폼 상태 잠금을 위한 DynamoDB 테이블 이름"
  type        = string
}

variable "environment" {
  description = "배포 환경 (dev, staging, prod)"
  type        = string
}

variable "project_name" {
  description = "프로젝트 이름"
  type        = string
  default     = "viva-tools"
}