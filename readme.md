- terraform plan: to see the changes to infrastructure, -out option to save the output
- terraform apply: apply the changes, can specify the out option to apply
- terraform show: Show human readable output from a state or a plan
- terraform taint: resource will be recreated in the next apply
- terraform fmt: format all tf files
- terraform import [ip]: import the infrastructure (still have to manually create the resource)
- terraform state: to view the state
- terraform init: init project, always use the same provider version in lock file

Terraform can have the remote state in S3.

terraform provides datasources, Datasources provide you with dynamic information (List of AMIs, AZs): declare a resource "aws_ip_ranges" -> reference to that resource

The template provider can help creating customized configuration files (deprecated): for example, a bin bash file -> declare a resource with that file -> can replace variable

You can use modules to make your terraform more organized

Some instance types have local storage on the instance itself: ephemeral storage

Interpolation: su them vao`, suy ra


- The task definition describes what docker container to be run on the cluster: docker image, cpu and memory usage, whether the containers should be linked, env variables
- A Service definition is going to run a specific amount of containers based on the task definition: run 1 or multiple instances, can put Load Balancer in front of the service

To achieve multiple environmentsL
    - Use terraform workspaces
    - Use modules and separate directories

reading 390
https://github.com/wardviaene/terraform-course/tree/master

https://developer.hashicorp.com/terraform/language/files/dependency-lock - check sum
https://github.com/b0ld8/tf-awesome/blob/main/multiple_environments/separated_directories/environments/staging/provider.tf
