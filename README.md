# Terraform AZURE Application Registration module
* This module allows you to Register an application with required roles and permissions and return Clientid and ClientSecret
* This module will register an application and create Service principal with following roles attached:
  * Reader
  * Reader and Data Access
  * Custom Readonly access for required resources
  
## 1.Create a <file.tf> file and paste below code and modify as you needed

```
module "iam-config" {
 source = "github.com/uptycslabs/terraform-azure-iam-config"

  app_prefix = "cloudquery"
  }
  
output "Subscriptionid" {
value=module.iam-config.SubscriptionId
}
output "TenantId" {
value=module.iam-config.Tenant_id
}
output "Application_id" {
  value = module.iam-config.Applicationid
}
output "Object_id" {
  value = module.iam-config.Objectid
}
output "Client_Secret" {
  value = module.iam-config.client_secret
  sensitive = true
}
output "ClientsecretId" {
    value=module.iam-config.client_secret_id
}

```

## Inputs

| Name | Description | Type | Default |
| ---- | ----------- | ---- | ------- |
| app_prefix | Prefix to be used for naming new resources | `string` | `cloudquery`|

## Outputs

| Name                    | Description      |
| ----------------------- | ---------------- |
| Subscriptionid        | Subscriptionid  |
|  TenantId  | TenantId |
|  ObjectId | Objectid |
|  Client_Secret  |  ClientSecret |
|  Application_id |   ClientID |


## 2. Execute Terraform script to get role arn
```sh
$ terraform init
$ terraform plan
$ terraform apply
```




