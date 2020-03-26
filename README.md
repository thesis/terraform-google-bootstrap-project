
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
<!-- The following Inputs example will be over-written by pre-commit hooks,
  and is here only as an example in case you opt not to use the hooks. -->
## Inputs

Table of available module inputs in the format:

|Name | Description | Type |Default | Required
--- | --- | --- | --- | --- |
`inputName`| Description of this input | input type | `default value` | boolean

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
