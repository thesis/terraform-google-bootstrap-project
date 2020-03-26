
<!-- Module Name and description are required -->
# Google Bootstrap Project Module

<!-- TODO: Add description -->

<!-- Compatibility section is optional -->
## Compatibility

This module is compatible with Terraform `<= 0.12.0`
And the Google Cloud Provider `<= 1.19.0`

<!-- Usage section is required -->
## Usage

<!-- NOTE: Examples should go into an `/examples` directory, with a link here
along the following lines:

There are multiple examples included in the [examples](./examples/) folder but
simple usage is as follows:
 -->
Sample module block showing required fields configured.  You can have
multiple examples if it makes sense for the module.

```hcl
locals {
  labels {
    contact     = "author@email.co"
    environment = "fancy-dev"
    vertical    = "fancy"
  }
}

module "fancy_google_project" {
  source                = "git@github.com:thesis/terraform-google-bootstrap-project.git"
  project_name          = "fancy-dev"
  org_id                = "xxxyyyzzz"
  billing_account       = "111222333"
  project_owner_members = ["john@email.co", "lilly@email.co",]
  location              = "us-central1"
  labels                = ${local.labels}
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| billing\_account | The billing account to associate with your project.  Must be associated with org already. Local ENV VAR | string | `""` | no |
| disable\_on\_destroy | Determines whether to disable the service when the terraform resource is destroyed (true/ false) | string | `"true"` | no |
| labels | A list of key/value pairs to describe your resource.  Labels are akin to tags. | map | `<map>` | no |
| location | The region to deploy the backend bucket in. | string | `"us-east4"` | no |
| org\_id | The ID for the organization the project will be created under. Local ENV VAR | string | `""` | no |
| project\_name | The name to give your project. | string | `""` | no |
| project\_owner\_members | A list of gcp users / service accounts to designate as owners of the project being created. | list | `<list>` | no |
| project\_service\_list | List of services or APIs that will be enabled on project creation. | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| project\_id |  |
| project\_name |  |
| terraform\_backend\_bucket\_name |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- Notes section is optional -->
## Notes

For a Thesis or a Thesis vertical project this should be the first module you run.
It does require admin access on the GCP Organization level.

<!-- License is required -->
## License

See [LICENSE](./LICENSE) for full details.

<!-- Before open-sourcing this module, Remove this comment and update the
  LICENSE file at the repo root. Else: Copyright Thesis, Inc., 2020 -->
