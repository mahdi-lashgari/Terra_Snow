terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

provider "registry.terraform.io/snowflake-labs/snowflake" {
  version     = "0.83.1"
  constraints = "~> 0.83"
}

provider "snowflake" {
  alias       = "accountadmin"
  role        = "ACCOUNTADMIN"
  account     = snowflake_account
  username    = snowflake_username
  password    = snowflake_password
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}

resource "snowflake_schema" "demo_schema" {
  database = snowflake_database.demo_db.name
  name     = "DEMO_SCHEMA"
  comment  = "Schema for Snowflake Terraform demo"
}
