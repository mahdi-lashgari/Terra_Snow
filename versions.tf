terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

provider "snowflake" {
  organization_name = "organization_name"
  account_name      = "account_name"
  user              = "johndoe"
  password          = "v3ry$3cr3t"
  role              = "ACCOUNTADMIN"
}
