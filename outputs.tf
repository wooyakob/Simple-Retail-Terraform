output "connection_string" {
  description = "Capella cluster connection string for cbimport and app configuration"
  value       = module.cluster.connection_string
}

output "db_credential_password" {
  description = "Auto-generated password for the simple-retail database user"
  value       = module.db_credentials.db_credential_password
  sensitive   = true
}

output "allowed_cidr" {
  description = "The current IP address allowlisted for database access"
  value       = module.allowed_ip.allowed_cidr
}

output "endpoint_url" {
  description = "The public URLs for the Couchbase Capella App Endpoints"
  value       = { for k, v in module.app_endpoints.app_endpoints : k => v.public_url }
}
