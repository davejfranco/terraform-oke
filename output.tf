#OKE cluster outputs
output "oke_id" {
  value = "${oci_containerengine_cluster.oke_cluster.id}"
}

output "cluster_name" {
  value = "${oci_containerengine_cluster.oke_cluster.name}"
}

output "cluster_endpoint" {
  value = "${oci_containerengine_cluster.oke_cluster.endpoints.kubernetes}"
}

output "cluster_version" {
  value = "${oci_containerengine_cluster.oke_cluster.kubernetes_version}"
}

output "cluster_state" {
  value = "${oci_containerengine_cluster.oke_cluster.state}"
}
#OKE node pool outputs
output "node_pool_id" {
  value = "${oci_containerengine_node_pool.oke_node_pool.id}"
}

output "node_pool_id" {
  value = "${oci_containerengine_node_pool.oke_node_pool.id}"
}
output "node_pool_kubernetes_version" {
  value = "${oci_containerengine_node_pool.oke_node_pool.kubernetes_version}"
}

output "node_pool_shape" {
  value = "${oci_containerengine_node_pool.oke_node_pool.node_shape}"
}

output "node_pool_state" {
  value = "${oci_containerengine_node_pool.oke_node_pool.nodes.state}"
}
