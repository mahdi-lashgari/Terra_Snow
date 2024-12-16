terraform {
  required_version = "~> 1.9.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    snowflake = {
      source                = "Snowflake-Labs/snowflake"
      version               = "~> 0.83"
      configuration_aliases = [snowflake.accountadmin]
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
