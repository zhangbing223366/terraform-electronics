variable "SNOWFLAKE_ACCOUNT" {
  description = "Your Snowflake account identifier"
  type        = string
}

variable "SNOWFLAKE_USERNAME" {
  description = "Snowflake username"
  type        = string
}

variable "SNOWFLAKE_PASSWORD" {
  description = "Snowflake password"
  type        = string
  sensitive   = true
}
