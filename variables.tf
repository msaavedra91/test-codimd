variable "eks_cluster_name" {
    type    = string
    default = "codimd-cluster"  
}

variable "eks_subnets" {
    default = ["subnet-388e2719", "subnet-8b0b79c6"]
}

variable "node_group_name" {
    type = string
    default = "codimd_nodes"
}