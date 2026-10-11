output "annotations_id" {
  description = "Map of id values across all annotations, keyed the same as var.annotations except keys with no id are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "annotations_annotations" {
  description = "Map of annotations values across all annotations, keyed the same as var.annotations except keys with no annotations are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "annotations_api_version" {
  description = "Map of api_version values across all annotations, keyed the same as var.annotations except keys with no api_version are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "annotations_field_manager" {
  description = "Map of field_manager values across all annotations, keyed the same as var.annotations except keys with no field_manager are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => v.field_manager if v.field_manager != null && length(v.field_manager) > 0 }
}
output "annotations_force" {
  description = "Map of force values across all annotations, keyed the same as var.annotations except keys with no force are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => v.force if v.force != null }
}
output "annotations_kind" {
  description = "Map of kind values across all annotations, keyed the same as var.annotations except keys with no kind are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "annotations_metadata" {
  description = "Map of metadata values across all annotations, keyed the same as var.annotations except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "annotations_template_annotations" {
  description = "Map of template_annotations values across all annotations, keyed the same as var.annotations except keys with no template_annotations are omitted"
  value       = { for k, v in kubernetes_annotations.annotations : k => v.template_annotations if v.template_annotations != null && length(v.template_annotations) > 0 }
}

