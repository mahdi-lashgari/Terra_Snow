terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "1.0.0"
    }
  }
}

#
provider "snowflake" {
  alias         = "accountadmin"
  user          = snowflake_username
  account       = snowflake_account
  password      = snowflake_password
  authenticator = "JWT"
  role          = "ACCOUNTADMIN"
}
