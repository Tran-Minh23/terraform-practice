- terraform plan: to see the changes to infrastructure, -out option to save the output
- terraform apply: apply the changes, can specify the out option to apply
- terraform show: Show human readable output from a state or a plan
- terraform taint: resource will be recreated in the next apply
- terraform fmt: format all tf files
- terraform import [ip]: import the infrastructure (still have to manually create the resource)
- terraform state: to view the state

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

reading 315
https://github.com/wardviaene/terraform-course/tree/master
