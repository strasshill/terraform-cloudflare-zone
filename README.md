# terraform-cloudflare-zone

Terraform modules to create Cloudflare Hosted zone

[![lint](https://github.com/flaconi/terraform-cloudflare-zone/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-cloudflare-zone/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-cloudflare-zone/workflows/test/badge.svg)](https://github.com/flaconi/terraform-cloudflare-zone/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-cloudflare-zone.svg)](https://github.com/flaconi/terraform-cloudflare-zone/releases)
[![Terraform](https://img.shields.io/badge/Terraform--registry-cloudflare--zone-brightgreen.svg)](https://registry.terraform.io/modules/flaconi/zone/cloudflare/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5.8 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.8 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_account_name"></a> [account\_name](#input\_account\_name)

Description: Account Name to manage the zone resource in. `Account Settings:Read` permission is required.

Type: `string`

### <a name="input_domain"></a> [domain](#input\_domain)

Description: Cloudflare domain name to create

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_type"></a> [type](#input\_type)

Description: A full zone implies that DNS is hosted with Cloudflare. A partial zone is typically a partner-hosted zone or a CNAME setup.

Type: `string`

Default: `"full"`

### <a name="input_settings"></a> [settings](#input\_settings)

Description: Various setting\_id/value pairs which customizes Cloudflare zone settings. Note that some settings are only available on certain plans.

Type: `map(any)`

Default: `{}`

### <a name="input_bot_management"></a> [bot\_management](#input\_bot\_management)

Description: Cloudflare bot management configuration.

Type:

```hcl
object({
    auto_update_model     = optional(bool, false)
    enable_js             = optional(bool, false)
    is_robots_txt_managed = optional(bool, false)
  })
```

Default: `{}`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | Cloudflare Account ID |
| <a name="output_id"></a> [id](#output\_id) | Cloudflare Zone ID |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | Cloudflare Zone Name Servers |
| <a name="output_settings"></a> [settings](#output\_settings) | Cloudflare Zone Settings |
| <a name="output_status"></a> [status](#output\_status) | Cloudflare Zone Status |

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2021 **[Flaconi GmbH](https://github.com/flaconi)**
