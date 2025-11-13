terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = ">= 0.70.0"  # 最新版本，避免 SHOW DATABASES 报错
    }
  }
  required_version = ">= 1.3.0"
}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  # region 可不填，除非你的 URL 特殊
}

resource "snowflake_database" "my_db" {
  name    = "TEST_DB_3"  # 数据库名，可改
  comment = "Created via Terraform Cloud"
  data_retention_time_in_days = 1

  lifecycle {
    ignore_changes = [name]  # 避免刷新报错
  }
}
