
variable "compartment_id" { type = "string" }
variable "k8s_version" { type = "string" }

variable "cluster_name" { type = "string" }

variable "vcn_id" { type = "string" }

variable "k8s_dashboard_enabled" { type = "string" default = "true" }
variable "k8s_tiller_enabled" { type = "string" default = "true" }

variable "service_lb_subnet_ids" { type = "list" }

variable "node_pool_name" { type = "string" }

variable "node_image_name" { type = "string" default = "Oracle-Linux-7.5"}

variable "node_pool_shape" {type = "string" default = "VM.Standard2.1"}
variable "node_pool_subnet_ids" { type = "list" }
variable "node_pool_environment" { type = "string" }
variable "node_pool_quantity_per_subnet" { type = "string" default = "1" }

variable "node_pool_ssh_public_key" { type = "string" }


