# terraform-playground
notes on [terraform-aws-provider-tutorial](https://learn.hashicorp.com/collections/terraform/aws-get-started)


- `terraform init`  - initialize and download providers etc.
- `terraform fmt` - format the code
- `terraform validate` - validate the code
- `terraform plan` - formulate the provision plan, not an actual provisioning
- `terraform apply` - provision the resources (e.g. creating a new EC2 instance) 
- `terraform show` - show the provisioned resources
- `terraform state list` - list the provisioned resources
- `terraform destroy` - destroy the provisioned resources

### AWS CLI

```bash
# set the AWS profile
export AWS_PROFILE=milanoid

# verify
aws sts get-caller-identity
{
    "UserId": "AIDAXXXXXXXXXXXXXXXX",
    "Account": "26XXXXXXXXXX",
    "Arn": "arn:aws:iam::26XXXXXXXXXX:user/milanoid"
}
```
