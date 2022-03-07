<p align="center">
    <a href="https://github.com/tomarv2/terraform-azure-application-insights/actions/workflows/pre-commit.yml" alt="Pre Commit">
        <img src="https://github.com/tomarv2/terraform-azure-application-insights/actions/workflows/pre-commit.yml/badge.svg?branch=main" /></a>
    <a href="https://www.apache.org/licenses/LICENSE-2.0" alt="license">
        <img src="https://img.shields.io/github/license/tomarv2/terraform-azure-application-insights" /></a>
    <a href="https://github.com/tomarv2/terraform-azure-application-insights/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-azure-application-insights" /></a>
    <a href="https://github.com/tomarv2/terraform-azure-application-insights/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/tomarv2/terraform-azure-application-insights" /></a>
    <a href="https://stackoverflow.com/users/6679867/tomarv2" alt="Stack Exchange reputation">
        <img src="https://img.shields.io/stackexchange/stackoverflow/r/6679867"></a>
    <a href="https://twitter.com/intent/follow?screen_name=varuntomar2019" alt="follow on Twitter">
        <img src="https://img.shields.io/twitter/follow/varuntomar2019?style=social&logo=twitter"></a>
</p>

# Terraform module for Azure Application Insights

## Versions

- Module tested for Terraform 1.0.1.
- Azure provider version [2.98](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- `main` branch: Provider versions not pinned to keep up with Terraform releases
- `tags` releases: Tags are pinned with versions (use <a href="https://github.com/tomarv2/terraform-azure-application-insights/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-azure-application-insights" /></a> in your releases)

## Usage

### Option 1:

```
terrafrom init
terraform plan -var='teamid=tryme' -var='prjid=project'
terraform apply -var='teamid=tryme' -var='prjid=project'
terraform destroy -var='teamid=tryme' -var='prjid=project'
```
**Note:** With this option please take care of remote state storage

### Option 2:

#### Recommended method (stores remote state in storage using `prjid` and `teamid` to create directory structure):

- Create python 3.8+ virtual environment
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote --upgrade
```

- Set below environment variables:
```
export TF_AZURE_STORAGE_ACCOUNT=tfstatexxxxx # Output of remote_state.sh
export TF_AZURE_CONTAINER=tfstate # Output of remote_state.sh
export ARM_ACCESS_KEY=xxxxxxxxxx # Output of remote_state.sh
```

- Updated `examples` directory to required values

- Run and verify the output before deploying:
```
tf -c=azure plan -var='teamid=foo' -var='prjid=bar'
```

- Run below to deploy:
```
tf -c=azure apply -var='teamid=foo' -var='prjid=bar'
```

- Run below to destroy:
```
tf -c=azure destroy -var='teamid=foo' -var='prjid=bar'
```
**NOTE:**

- Read more on [tfremote](https://github.com/tomarv2/tfremote)
---

Please refer to examples directory [link](examples) for references.

#### Application Insights

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.98 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 2.98 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_application_insights.application_insights](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_insight_type"></a> [application\_insight\_type](#input\_application\_insight\_type) | Application Insight type | `string` | `"web"` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_prjid"></a> [prjid](#input\_prjid) | Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group | `string` | n/a | yes |
| <a name="input_teamid"></a> [teamid](#input\_teamid) | Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_id"></a> [app\_id](#output\_app\_id) | Application Insights Id |
| <a name="output_connection_string"></a> [connection\_string](#output\_connection\_string) | Application Insights connection string |
| <a name="output_instrumentation_key"></a> [instrumentation\_key](#output\_instrumentation\_key) | Instrumentation key |

### References:
- https://docs.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview
