
key_name                            = "demo_key"
rg_name                             = "c7n-aks"
rg_location                         = "westus"
node_count                          = 1
kubernetes_version                  = "1.15.7"
vm_size                             = "Standard_D1_v2"
admin_username                      = "ubuntu"
ssh_public_key                      = "/Users/demo/.ssh/id_rsa.pub"
log_analytics_workspace_sku         = "PerGB2018"
retention_in_days                   = "7"
rbac_enabled                        = "true"
rbac_client_app_id                  = "xxxxxxxxxxx"
rbac_server_app_id                  = "xxxxxxxxx"
rbac_server_app_secret              = "xxxxxxxxxx"
rbac_tenant_id                      = "xxxxxxx"
#-------------------------------------------------------------------
# Note: Do not change teamid and prjid once set.
teamid                              = "demo"
prjid                               = "c7n-aks"
