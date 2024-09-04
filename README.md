# Create Terraform workflow to run on Github Action to spin up AWS SNS Topic

1. Create .github\workflow\terraform-check.yml
2. Create environment\dev.tfvaes
3. Create terraform file
     * provider.tf
     * backend.tf
     * main.tf
     * local.tf
     * variable.tf
4. Add aws_sns_topic resources
5. Create repository secret variable
     * AWS_ACCESS_KEY_ID
     * AWS_SECRET_ACCESS_KEY
6. Push local git to github repo

