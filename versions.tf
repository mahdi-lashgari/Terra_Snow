terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}
#
provider "snowflake" {
  alias         = "accountadmin"
  user          = var.snowflake_username
  account       = var.snowflake_account
  password      = var.snowflake_password
  role          = "ACCOUNTADMIN"
}
