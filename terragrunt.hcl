locals {
  account_id              = get_env("TF_SNOWFLAKE_ACCOUNT")
  aws_region              = ""
  environment_type        = "production"
  environment_name        = "snowflake-prod"
  application             = "Terra_Snow"
  team_name               = "test"
}

inputs = {
  snowflake_username                  = get_env("TF_SNOWFLAKE_USER")
  snowflake_account                   = get_env("TF_SNOWFLAKE_ACCOUNT")
  snowflake_password                  = get_env("TF_SNOWFLAKE_PASSWORD")
}
