output "app_insights_instrumentation_key" {
  description = "Instrumentation key"
  value       = module.app_insights.instrumentation_key
}

output "app_insights_app_id" {
  description = "Application Insights Id"
  value       = module.app_insights.app_id
}

output "app_insights_connection_string" {
  description = "Application Insights connection string"
  value       = module.app_insights.connection_string
}
