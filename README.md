# test-codimd

Dedicated infrastructure repository to deploy an EKS cluster in AWS for **codiMD**

## How does the CI/CD work

- Every time a PR is created, a **terraform plan** will be executed. In addition to being shown in the **Actions** section, it will be shown as a comment in the PR to make it easier to see the changes made and thus maintain a log of changes in each PR.

- Every time the changes are merged, a **terraform apply** will be executed.

## Related code

https://github.com/msaavedra91/greensill-codimd-helmcode