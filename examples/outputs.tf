output "instrumentation_key" {
  description = "Instrumentation key"
  value       = module.app_insights.instrumentation_key
}

output "app_id" {
  description = "Application Insights Id"
  value       = module.app_insights.instrumentation_key
}
