resource "kubernetes_annotations" "annotations" {
  for_each = var.annotations

  api_version          = each.value.api_version
  kind                 = each.value.kind
  annotations          = each.value.annotations
  field_manager        = each.value.field_manager
  force                = each.value.force
  template_annotations = each.value.template_annotations

  metadata {
    name      = each.value.metadata.name
    namespace = each.value.metadata.namespace
  }
}

