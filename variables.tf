variable "annotations" {
  description = <<EOT
Map of annotations, attributes below
Required:
    - api_version
    - kind
    - metadata (block):
        - name (required)
        - namespace (optional)
Optional:
    - annotations
    - field_manager
    - force
    - template_annotations
EOT

  type = map(object({
    api_version          = string
    kind                 = string
    annotations          = optional(map(string))
    field_manager        = optional(string)
    force                = optional(bool)
    template_annotations = optional(map(string))
    metadata = object({
      name      = string
      namespace = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.annotations : (
        v.field_manager == null || (length(trimspace(v.field_manager)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

