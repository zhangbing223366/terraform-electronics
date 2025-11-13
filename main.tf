terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.62.0"
    }
  }
}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  region   = "your_region"
}

resource "snowflake_database" "my_db" {
  name = "TEST_DB"
}
