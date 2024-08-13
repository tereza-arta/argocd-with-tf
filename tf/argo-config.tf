resource "helm_release" "argocd" {
  name             = var.release_name
  repository       = var.repository
  chart            = var.chart
  namespace        = var.namespace
  create_namespace = var.create_ns
  version          = var.chart_version

  values = ["${file("values.yaml")}"]
}
