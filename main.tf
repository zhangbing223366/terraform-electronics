terraform {
  required_providers {
    # 正确的 Snowflake Provider 来源
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.62.0"
    }
  }
}

# 声明输入变量，值通过 Terraform Cloud Environment Variables 提供
variable "SNOWFLAKE_ACCOUNT" {}
variable "SNOWFLAKE_USERNAME" {}
variable "SNOWFLAKE_PASSWORD" {}

# Snowflake Provider 配置
provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  region   = "ap-southeast-1"  # 这里改成你自己的 Snowflake region
}

# 测试用数据库资源
resource "snowflake_database" "test_db" {
  name = "TEST_DB"
}
