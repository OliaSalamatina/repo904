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

variable "environment" {
  type = string
  description = "The environment for deployment (e.g., dev, staging, prod)"
}
