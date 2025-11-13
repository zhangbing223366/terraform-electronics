terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "9.36.2"
    }
  }
}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  region   = var.SNOWFLAKE_REGION
}

resource "snowflake_database" "my_db" {
  name = "TEST_DB"   # 数据库名字，可修改
}
