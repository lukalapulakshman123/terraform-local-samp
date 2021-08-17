# Terraform AZURE Application Registration module
* This module allows you to Register an application with required roles and permissions and return Clientid and ClientSecret
* This module will register an application and create Service principal with following roles attached:
  * Reader
  * Reader and Data Access
  * Custom Readonly access for required resources
  
## Create a <file.tf> file and paste below code and modify as you needed

```
module "iam-config" {
 source = "/home/llukalapu/practice/llrazure"

  app_prefix = "lakshman_azure_test"
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



## Outputs

| Name                    | Description      |
| ----------------------- | ---------------- |
| Subscriptionid        | AWS IAM role ARN |
|  TenantId  | TenantId |
|  ObjectId | Objectid |
|  Client_Secret  |  ClientSecret |


## 3. Execute Terraform script to get role arn
```sh
$ terraform init
$ terraform plan
$ terraform apply
```



