output "id" {
  description = "The ID of the Application Insights component."
  value       = module.application_insights.id
}

output "instrumentation_key" {
  description = "The Instrumentation Key for this Application Insights component. (Sensitive)"
  value       = module.application_insights.instrumentation_key
}

output "app_id" {
  description = "The App ID associated with this Application Insights component."
  value       = module.application_insights.app_id
}

output "connection_string" {
  description = "The Connection String for this Application Insights component. (Sensitive)"
  value       = module.application_insights.connection_string
}
