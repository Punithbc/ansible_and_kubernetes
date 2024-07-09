terraform version
terraform init input= false
terraform init -backend-config=cfg/s3.dev.tf - reconfigure
terraform plan
terraform apply
terraform apply -auto-approve
terraform apply -target=module.s3
terraform refresh
terraform destroy
terraform destroy -target=aws.s3.bucket=my_bucket
terraform validate
terraform fmt
terraform taint
terraform untaint
terraform import aws_instance=myec2 instance_id
terraform show
terraform show-json
terraform apply -var="image_id=a6q3rkfjfl"
erraform apply -var='image_id_list=["ami-abc123","ami-def456"]'
terraform apply -var='image_id_map={"us-east-1":"ami-abc123","us-east-2":"ami-def456"}'
terraform apply -var-file="testing.tfvars"
export TF_VAR_image_id=ami-abc123
$terraform plan

terraform workspace new
terraform workspace list 
terraform workspace select
terraform workspace delete
terraform workspace show