terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.64.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  # region 可以不填，如果你的 Snowflake URL 是标准的
}

resource "snowflake_database" "my_db" {
  name    = "TEST_DB_2"
  comment = "Created via Terraform Cloud"
  # 可选：数据保留天数
  data_retention_time_in_days = 1
}
