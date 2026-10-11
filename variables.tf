variable "data_safe_unset_user_assessment_baselines" {
  description = <<EOT
Map of data_safe_unset_user_assessment_baselines, attributes below
Required:
    - user_assessment_id
Optional:
    - target_ids
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    user_assessment_id = string
    target_ids         = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

