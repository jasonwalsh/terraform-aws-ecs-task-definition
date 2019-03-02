## Contents

- [Usage](#usage)

## Usage

This repository uses a Docker image that contains a pre-release version of Terraform [`v0.12.0`](https://github.com/hashicorp/terraform/releases/tag/v0.12.0-beta1). The [`GNUmakefile`](GNUmakefile) includes commands that adhere to the [subcommands](https://www.terraform.io/docs/commands/index.html) of the Terraform command-line interface. For example, `make fmt` invokes `terraform fmt` using the [Docker Compose](https://docs.docker.com/compose/compose-file/) file.

    $ make init
    $ make plan
    $ make apply
