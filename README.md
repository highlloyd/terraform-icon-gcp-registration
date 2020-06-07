# terraform-icon-gcp-registration

[![open-issues](https://img.shields.io/github/issues-raw/highlloyd/terraform-icon-gcp-registration?style=for-the-badge)](https://github.com/highlloyd/terraform-icon-gcp-registration/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/highlloyd/terraform-icon-gcp-registration?style=for-the-badge)](https://github.com/highlloyd/terraform-icon-gcp-registration/pulls)

## Features

This module helps with registering a node on the ICON Blockchain. It does three main things.

- Creates an elastic IP that will be your main IP that your node will use to run and applies a number of tags on the
resource so it can be queried to be attached to instances later
- Puts the necessary details.json file in a bucket publicly accessible along with logos
- Runs `preptools` to register the node or update the info

**Make sure you have 2000 ICX registration fee in your wallet for mainnet and you have testnet tokens for testnet**

## Terraform Versions

For Terraform v0.12.0+

## Usage

```
module "this" {
    source = "github.com/highlloyd/terraform-icon-gcp-registration"

}
```
## Examples

- [defaults](https://github.com/highlloyd/terraform-icon-gcp-registration/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [Ronaldo Lauture](https://github.com/highlloyd)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.