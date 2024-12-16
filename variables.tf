variable "snowflake_account" {
  type  = string
  value = var.snowflake_account
}

variable "snowflake_username" {
  type  = string
  value = var.snowflake_username
}

variable "snowflake_password" {
  type      = string
  sensitive = true
  value     = var.snowflake_password
}
