variable "snowflake_account" {
  type  = string
  value = ${{ vars.SNOWFLAKE_ACCOUNT }}
}

variable "snowflake_username" {
  type  = string
  value = ${{ secrets.SNOWFLAKE_PASSWORD }}
}

variable "snowflake_password" {
  type      = string
  sensitive = true
  value     = ${{ vars.SNOWFLAKE_USER }}
}
