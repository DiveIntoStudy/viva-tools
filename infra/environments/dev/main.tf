provider "aws" {
  region  = var.aws_region
  profile = "viva-tools-dev"  # AWS CLI 프로파일 이름 "tf" 고정 사용
}

# 프론트엔드 정적 웹 호스팅을 위한 S3 버킷
module "frontend_s3" {
  source = "../../modules/s3"

  bucket_name  = var.frontend_bucket_name
  environment  = var.environment
  project_name = var.project_name
}

# 아래 코드는 주석 처리되어 있으며, 테라폼 상태 관리 설정이 필요할 때 주석을 해제하세요
# 주의: 일반적으로 상태 버킷은 처음에 수동으로 생성하거나 별도의 프로세스로 관리합니다

module "terraform_state" {
  source = "../../modules/terraform_state"

  state_bucket_name    = "${var.project_name}-terraform-state-${var.environment}"
  dynamodb_table_name  = "${var.project_name}-terraform-locks-${var.environment}"
  environment          = var.environment
  project_name         = var.project_name
}


# 테라폼 백엔드 설정 (상태 버킷이 이미 존재해야 함)
# 아래 코드는 주석 처리되어 있으며, 원격 상태 관리를 설정하려면 주석을 해제하세요
/*
terraform {
  backend "s3" {
    bucket         = "viva-tools-terraform-state-dev"
    key            = "frontend/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "viva-tools-terraform-locks-dev"
  }
}
*/