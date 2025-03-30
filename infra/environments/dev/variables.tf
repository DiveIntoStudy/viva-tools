variable "aws_region" {
  description = "AWS 리전"
  type        = string
  default     = "ap-northeast-2"
}

variable "environment" {
  description = "배포 환경"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "프로젝트 이름"
  type        = string
  default     = "viva-tools"
}

variable "frontend_bucket_name" {
  description = "프론트엔드 파일을 호스팅할 S3 버킷 이름"
  type        = string
  default     = "viva-tools-frontend-dev"
}