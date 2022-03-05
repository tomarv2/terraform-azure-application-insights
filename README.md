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

**NOTE:**

- Read more on [tfremote](https://github.com/tomarv2/tfremote)

## Usage

Recommended method:

- Create python 3.6+ virtual environment
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote
```

- Set below environment variables:
```
export TF_AZURE_STORAGE_ACCOUNT=tfstatexxxxx # Output of remote_state.sh
export TF_AZURE_CONTAINER=tfstate # Output of remote_state.sh
export ARM_ACCESS_KEY=xxxxxxxxxx # Output of remote_state.sh
```

- Updated `examples` directory to required values.

- Run and verify the output before deploying:
```
tf -cloud aws plan -var-file <path to .tfvars file>
```

- Run below to deploy:
```
tf -cloud aws apply -var-file <path to .tfvars file>
```

- Run below to destroy:
```
tf -cloud aws destroy -var-file <path to .tfvars file>
```

> ❗️ **Important** - Two variables are required for using `tf` package:
>
> - teamid
> - prjid
>
> These variables are required to set backend path in the remote storage.
> Variables can be defined using:
>
> - As `inline variables` e.g.: `-var='teamid=demo-team' -var='prjid=demo-project'`
> - Inside `.tfvars` file e.g.: `-var-file=<tfvars file location> `
>
> For more information refer to [Terraform documentation](https://www.terraform.io/docs/language/values/variables.html)


Please refer to examples directory [link](examples) for references.

##### Application Insights

### References:
- https://docs.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview
