terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "1.10.1"
    }
  }
}

provider "snowflake" {
  alias         = "accountadmin"
  user          = var.snowflake_username
  account       = var.snowflake_account
  private_key   = var.snowflake_password
  authenticator = "JWT"
  role          = "ACCOUNTADMIN"
}
