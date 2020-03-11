# global vars
variable "labels" {
  description = "A list of key/value pairs to describe your resource.  Labels are akin to tags."
  type        = "map"
  default     = {}
}

# project resource vars
variable "project_name" {
  description = "The name to give your project."
  type        = "string"
  default     = ""
}

variable "org_id" {
  description = "The ID for the organization the project will be created under. Local ENV VAR"
  type        = "string"
  default     = ""
}

variable "billing_account" {
  description = "The billing account to associate with your project.  Must be associated with org already. Local ENV VAR"
  default     = ""
}

variable "project_owner_members" {
  description = "A list of gcp users / service accounts to designate as owners of the project being created."
  type        = "list"
  default     = []
}

variable "project_service_list" {
  description = "List of services or APIs that will be enabled on project creation."
  type        = "list"
  default     = []
}

# Terraform backend bucket vars
variable "location" {
  description = "The region to deploy the backend bucket in."
  type        = "string"
  default     = "us-east4"
}
