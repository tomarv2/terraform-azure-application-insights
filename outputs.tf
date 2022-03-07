output "instrumentation_key" {
  description = "Instrumentation key"
  value       = nonsensitive(azurerm_application_insights.application_insights.instrumentation_key)
}

output "app_id" {
  description = "Application Insights Id"
  value       = azurerm_application_insights.application_insights.app_id
}

output "connection_string" {
  description = "Application Insights connection string"
  value       = nonsensitive(azurerm_application_insights.application_insights.connection_string)
}
