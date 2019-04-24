# Creación de cluster OKE
resource "oci_containerengine_cluster" "oke_cluster" {
    #Required
    compartment_id = "${var.compartment_id}"
    kubernetes_version = "${var.k8s_version}"
    name = "${var.cluster_name}"
    vcn_id = "${var.vcn_id}"

    options {

        #Optional
        add_ons {
            #Optional
            is_kubernetes_dashboard_enabled = "${var.k8s_dashboard_enabled}"
            is_tiller_enabled = "${var.k8s_tiller_enabled}"
        }
        service_lb_subnet_ids = ["${var.service_lb_subnet_ids}"]
    }
}

resource "oci_containerengine_node_pool" "oke_node_pool" {
    #Required
    cluster_id = "${oci_containerengine_cluster.oke_cluster.id}"
    compartment_id = "${var.compartment_id}"
    kubernetes_version = "${var.k8s_version}"
    name = "${var.node_pool_name}"
    node_shape = "${var.node_pool_shape}"
    subnet_ids = ["${var.node_pool_subnet_ids}"]
    node_image_name = "${var.node_image_name}"

    initial_node_labels {
        key = "environment"
        value = "${var.node_pool_environment}"
    }

    quantity_per_subnet = "${var.node_pool_quantity_per_subnet}"
    ssh_public_key = "${var.node_pool_ssh_public_key}"
}