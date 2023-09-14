- terraform plan: to see the changes to infrastructure, -out option to save the output
- terraform apply: apply the changes, can specify the out option to apply
- terraform show: Show human readable output from a state or a plan
- terraform taint: resource will be recreated in the next apply
- terraform fmt: format all tf files
- terraform import [ip]: import the infrastructure (still have to manually create the resource)

terraform provides datasources, Datasources provide you with dynamic information (List of AMIs, AZs): declare a resource "aws_ip_ranges" -> reference to that resource

The template provider can help creating customized configuration files (deprecated): for example, a bin bash file -> declare a resource with that file -> can replace variable

You can use modules to make your terraform more organized

Some instance types have local storage on the instance itself: ephemeral storage

reading 130
