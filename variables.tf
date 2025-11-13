variable "SNOWFLAKE_ACCOUNT" {}
variable "SNOWFLAKE_USERNAME" {}
variable "SNOWFLAKE_PASSWORD" {
  sensitive = true
}
variable "SNOWFLAKE_REGION" {
  default = "us-east-1" # 改成你实际的 region
}
