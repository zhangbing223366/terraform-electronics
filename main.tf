variable "SNOWFLAKE_ACCOUNT" {}
variable "SNOWFLAKE_USERNAME" {}
variable "SNOWFLAKE_PASSWORD" {}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USERNAME
  password = var.SNOWFLAKE_PASSWORD
  region   = "ap-southeast-1"
}

resource "snowflake_database" "my_db" {
  name = "TEST_DB"
}
