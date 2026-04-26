resource "couchbase-capella_database_credential" "db_credential" {
  name            = var.db_credential.username
  organization_id = var.organization_id
  project_id      = var.project_id
  cluster_id      = var.cluster_id

  access = [
    {
      privileges = ["data_reader", "data_writer"]
      resources = {
        buckets = [
          {
            name = var.db_credential.bucket
          }
        ]
      }
    }
  ]
}

output "db_credential_id" {
  value = couchbase-capella_database_credential.db_credential.id
}

output "db_credential_password" {
  value     = couchbase-capella_database_credential.db_credential.password
  sensitive = true
}
