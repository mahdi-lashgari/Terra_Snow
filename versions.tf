terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.83"
    }
  }
}

provider "snowflake" {
  alias         = "accountadmin"
  user          = var.snowflake_username
  account       = var.snowflake_account
  password      = var.snowflake_password
  authenticator = "JWT"
  role          = "ACCOUNTADMIN"
}
