provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "kubernetes_namespace" "kind-namespace" {
  metadata {
    name = "sandipan-space"
  }
}

resource "helm_release" "local" {
  name  = "mychart"
  chart = "./mychart"
}
