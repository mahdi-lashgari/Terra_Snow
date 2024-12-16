terraform {
  required_version = "~> 1.9.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

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
  private_key   = var.snowflake_password
  authenticator = "JWT"
  role          = "ACCOUNTADMIN"
}
