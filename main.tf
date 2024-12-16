resource "snowflake_database" "databases" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"

  lifecycle {
    prevent_destroy = true
  }
}

resource "snowflake_schema" "schemas" {
  database = snowflake_database.demo_db.name
  name     = "DEMO_SCHEMA"
  comment  = "Schema for Snowflake Terraform demo"

  depends_on = [snowflake_database.databases]

  lifecycle {
    prevent_destroy = true
  }
}
