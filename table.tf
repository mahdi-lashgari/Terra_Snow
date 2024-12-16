resource "snowflake_sequence" "sequence" {
  database = snowflake_database.databases.name
  schema   = snowflake_schema.schemas.name
  name     = "sequence"

  depends_on = [snowflake_database.databases, snowflake_schema.schemas]

  lifecycle {
    prevent_destroy = true
  }
}

resource "snowflake_table" "table" {
  database                    = snowflake_database.databases.name
  schema                      = snowflake_schema.schemas.name
  name                        = "table1"
  comment                     = "A table."
  cluster_by                  = ["to_date(DATE)"]
  data_retention_time_in_days = 1
  change_tracking             = false

  column {
    name     = "id"
    type     = "int"
    nullable = true

    default {
      sequence = snowflake_sequence.sequence.fully_qualified_name
    }
  }

  column {
    name     = "identity"
    type     = "NUMBER(38,0)"
    nullable = true

    identity {
      start_num = 1
      step_num  = 3
    }
  }

  column {
    name     = "data"
    type     = "text"
    nullable = false
    collate  = "en-ci"
  }

  column {
    name = "DATE"
    type = "TIMESTAMP_NTZ(9)"
  }

  column {
    name    = "extra"
    type    = "VARIANT"
    comment = "extra data"
  }

  primary_key {
    name = "my_key"
    keys = ["data"]
  }

  depends_on = [snowflake_database.databases, snowflake_schema.schemas]

  lifecycle {
    prevent_destroy = true
  }
}
