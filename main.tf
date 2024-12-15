required_providers {
  snowflake = {
    source  = "Snowflake-Labs/snowflake"
    version = "~> 0.68.2"
  }
  random = {
    source  = "hashicorp/random"
    version = "3.3.2"
  }
}

provider "snowflake" {
  alias    = "accountadmin"
  role     = "ACCOUNTADMIN"
  account  = snowflake_account
  username = snowflake_username
  password = snowflake_password
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
