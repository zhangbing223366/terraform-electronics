variable "SNOWFLAKE_ACCOUNT" {
  description = "Your Snowflake account identifier"
}

variable "SNOWFLAKE_USERNAME" {
  description = "Snowflake username"
}

variable "SNOWFLAKE_PASSWORD" {
  description = "Snowflake password"
  sensitive   = true
}

# region 可以留空或者设置默认值
variable "SNOWFLAKE_REGION" {
  description = "Snowflake region (optional)"
  default     = ""
}
