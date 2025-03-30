variable "bucket_name" {
  description = "프론트엔드 호스팅을 위한 S3 버킷 이름"
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