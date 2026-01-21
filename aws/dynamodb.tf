module "pets_dynamodb_table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "5.5.0"

  name                        = "asseco-example-dynamodb-pets"
  hash_key                    = "id"
  range_key                   = "name"
  table_class                 = "STANDARD"
  deletion_protection_enabled = false

  attributes = [
    {
      name = "id"
      type = "N"
    },
    {
      name = "name"
      type = "S"
    }
  ]

  on_demand_throughput = {
    max_read_request_units  = 1
    max_write_request_units = 1
  }
}
