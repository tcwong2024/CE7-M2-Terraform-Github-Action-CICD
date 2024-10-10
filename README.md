# Create Terraform workflow to run on Github Action to spin up AWS SNS Topic

1. Create .github\workflow\terraform-check.yml
2. Create environment\dev.tfvars
3. Create terraform file
     * provider.tf
     * backend.tf
     * main.tf
     * local.tf
     * variable.tf
4. Add aws_sns_topic resources.
5. Create repository secret variable
     * AWS_ACCESS_KEY_ID
     * AWS_SECRET_ACCESS_KEY
6. Push local git to github repo and then go to Actions to view job result.
      Result : **"wtc-sns-topic"**
8. Challenge 1 : Change the variable of the sns topic from dev.tfvars and push.
      Result : **"wtc-dev-sns-topic"**
10. Challenge 2 : add prd.tfvars and add new terraform CD dispatch workflow and push.
     * Try to change to terraform CD and run manually and choose prd.
      Result : **"wtc-prd-sns-topic"** 

