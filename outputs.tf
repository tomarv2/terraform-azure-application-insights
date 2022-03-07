output "instrumentation_key" {
  description = "Instrumentation key"
  value       = nonsensitive(azurerm_application_insights.application_insight.instrumentation_key)
}

output "app_id" {
  description = "Application Insights Id"
  value       = nonsensitive(azurerm_application_insights.application_insight.app_id)
}
