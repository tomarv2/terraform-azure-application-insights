output "id" {
  description = "The ID of the Application Insights component."
  value       = [for insight in azurerm_application_insights.application_insights : insight.id]
}

output "instrumentation_key" {
  description = "The Instrumentation Key for this Application Insights component. (Sensitive)"
  value       = [for insight in azurerm_application_insights.application_insights : insight.instrumentation_key]
  sensitive   = true
}

output "app_id" {
  description = "The App ID associated with this Application Insights component."
  value       = [for insight in azurerm_application_insights.application_insights : insight.app_id]
}

output "connection_string" {
  description = "The Connection String for this Application Insights component. (Sensitive)"
  value       = [for insight in azurerm_application_insights.application_insights : insight.connection_string]
  sensitive   = true
}
