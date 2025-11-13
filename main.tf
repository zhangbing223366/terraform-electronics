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

resource "snowflake_schema" "my_schema" {
  name     = "TEST_SCHEMA"
  database = snowflake_database.my_db.name
}

resource "snowflake_warehouse" "my_wh" {
  name      = "TEST_WAREHOUSE"
  warehouse_size = "XSMALL"
}