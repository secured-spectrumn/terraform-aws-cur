terraform {
  required_version = ">= 0.13, < 2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }

    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0"
    }
  }
}

provider "aws" {
  # CUR is only available in us-east-1.
  # aws_cur_report_definition.this is the only resource using this provider.
  alias = "cur"

  region = "us-east-1"
}
