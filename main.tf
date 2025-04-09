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

  default = {
    metadata = {
      project     = "internal-dashboard"
      owner       = "team-devops"
      department  = "IT"
      tags        = ["internal", "high-priority"]
    }

    feature_toggles = [
      {
        name    = "enable_user_audit"
        enabled = true
      },
      {
        name    = "allow_guest_login"
        enabled = false
      },
      {
        name    = "beta_mode"
        enabled = true
      }
    ]
  }
}

output "config_output" {
  value = var.config
}
