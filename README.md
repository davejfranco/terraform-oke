# OKE terraform module

A terraform module to deploy Oracle Kubernetes Engine.

## Requirements

- An Oracle Cloud Account.
- Terraform >= v0.11.11

## Example  

```
module "oke" {
  source = "git@github.com:davejfranco/terraform-oke.git?ref=develop"

  compartment_id = "${oci_identity_compartment.oke_compartment.id}"
  k8s_version = "v1.12.7"
  cluster_name = "oke_demo_cluster"
  vcn_id = "${module.network.vcn_id}"
  service_lb_subnet_ids = ["${element(module.network.public_subnets, 0)}", "${element(module.network.public_subnets, 1)}"]
  node_pool_name = "np_demo_1"
  node_pool_subnet_ids = ["${element(module.network.public_subnets, 2)}"]
  node_pool_environment = "dev"
  node_pool_ssh_public_key = "${file("~/.ssh/id_rsa.pub")}"

}
```