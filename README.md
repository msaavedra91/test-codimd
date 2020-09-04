# test-codimd

Repository that handles:

- Manage and deploy the infrastructure in Terraform for a cluster of Kubernetes in AWS EKS.

- Manage and deploy [CodiMD](https://github.com/hackmdio/codimd) service, downloaded from the HELM Hub, through HELM.

## How to deploy

There are 3 branches:
| Branch | Description |
| --- | --- |
| develop-infra | Handles only changes made to the infra (terraform files) |
| develop-helmcode | Handles only changes made in HELM (codimd folder) |
| master | Keeps all changes, from the branches **develop-infra** and **develop-helmcode**, unified and up to date |

### To deploy infra
- Create a new branch and write your changes
- Create a PR to **develop-infra**
- Merge
- To save time (and automate more the flow), once the merge is applied to **develop-infra**, it will automatically execute an action on the CI/CD that creates a PR to **master**, this way the **master** branch is kept updated with all changes

### To deploy HELM code
- Create a new branch and write your changes
- Create a PR to **develop-helmcode**
- Merge
- To save time (and automate more the flow), once the merge is applied to **develop-helmcode**, it will automatically execute an action on the CI/CD that creates a PR to **master**, this way the **master** branch is kept updated with all changes


**NOTE:** Once the merge to **master** is done, it will automatically execute an action that will create a PR from **master** to **develop-infra** and **develop-helmcode** in order to keep all branches updated at all times.

## How does the CI/CD work

### Infra

- Every time a PR is created in **develop-infra**, a **terraform plan** will be executed. In addition to being shown in the **Actions** section, it will be shown as a comment in the PR to make it easier to see the changes made and thus maintain a log of changes in each PR.

- Every time the changes are merged in **develop-infra**, a **terraform apply** will be executed.

### HELM code

- Every time a PR is created in **develop-helmcode**, the CI/CD executes the change in the cluster (codimd-cluster) already created.

## How to access

Since the cluster is created using an ELB in AWS, the way to access codiMD is through the ELB, which is:
 
[a6b1daa7d367347dda30aab7d53c9db6-221903338.us-east-1.elb.amazonaws.com](http://a6b1daa7d367347dda30aab7d53c9db6-221903338.us-east-1.elb.amazonaws.com)
