provider "snowflake" {
  alias         = "useradmin"
  user          = var.snowflake_username
  account       = var.snowflake_account
  private_key   = var.snowflake_private_key
  authenticator = "JWT"
  role          = "ACCOUNTADMIN"
}
