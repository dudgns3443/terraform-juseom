terraform {
  cloud {
    organization = "Hoon_theYoung"         # 생성한 ORG 이름 지정
    hostname     = "app.terraform.io"      # default

    workspaces {
       name = "terraform-juseom"  # 없으면 생성됨
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-northeast-2"
}