variable "config" {
  type = object({
    metadata = object({
      project    = string
      owner      = string
      department = string
      tags       = list(string)
    })
    feature_toggles = list(object({
      name    = string
      enabled = bool
    }))
  })
}


output "config_output" {
  value = var.config
}
