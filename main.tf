terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.62.0"
    }
  }
}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  # region 可以不填，除非你的 Snowflake URL 特殊
}

resource "snowflake_database" "my_db" {
  name = "TEST_DB"
}
