terraform {
  source = "..//"
}

inputs = {
  snowflake_username                  = get_env("SNOWFLAKE_USER")
  snowflake_account                   = get_env("SNOWFLAKE_ACCOUNT")
  snowflake_password                  = get_env("SNOWFLAKE_PASSWORD")
}
