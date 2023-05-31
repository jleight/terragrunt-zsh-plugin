# terragrunt-zsh-plugin

A ZSH plugin that introduces several helpful terragrunt aliases.

## Aliases

Aliases in this plugin all start with `tg`.

### Single-module Aliases

For single-module terragrunt commands, the next part of the alias specifies which terragrunt command to run.
For your normal day-to-day commands, these are just single, lower-case letters:

| Command | Description                          |
|---------|--------------------------------------|
| `tg`    | Run any terragrunt command.          |
| `tga`   | Run `terragrunt apply`.              |
| `tgd`   | Run `terragrunt destroy`.            |
| `tgf`   | Run `terragrunt hclfmt`. (recursive) |
| `tgi`   | Run `terragrunt init`.               |
| `tgo`   | Run `terragrunt output`.             |
| `tgp`   | Run `terragrunt plan`.               |

A few more convenience aliases are provided:

| Command | Description                                             |
|---------|---------------------------------------------------------|
| `tgc`   | Clean the `.terragrunt-cache` directory.                |
| `tgff`  | Format both terragrunt and terraform files. (recursive) |
| `tgsd`  | Download the terraform state file to `state.json`.      |
| `tgsu`  | Upload `state.json` as the new state file.              |

Aliases that skip the need for approval or that are destructive are available with an upper-case letter:

| Command | Description                                                                 |
|---------|-----------------------------------------------------------------------------|
| `tgA`   | Run `terragrunt apply` with auto-approval.                                  |
| `tgC`   | Clean the `.terragrunt-cache` directory and the `.terraform.lock.hcl` file. |
| `tgD`   | Run `terragrunt destroy` with auto-approval.                                |

### Multiple-module Aliases

The power of terragrunt comes with its `run-all` command.
Aliases have been provided for running many of the above single-module commands with `run-all` using `tgx` as the prefix.
As with the single-module commands, upper case letters are used for auto-approval or destructive operations:

| Command | Description                                                                            |
|---------|----------------------------------------------------------------------------------------|
| `tgx`   | Run any `run-all` command.                                                             |
| `tgxa`  | Run `terragrunt run-all apply`.                                                        |
| `tgxA`  | Run `terragrunt run-all apply` with auto-approval.                                     |
| `tgxc`  | Recursively clean all `.terragrunt-cache` directories.                                 |
| `tgxC`  | Recursively clean all `.terragrunt-cache` directories and `.terraform.lock.hcl` files. |
| `tgxd`  | Run `terragrunt run-all destroy`.                                                      |
| `tgxD`  | Run `terragrunt run-all destroy` with auto-approval.                                   |
| `tgxi`  | Run `terragrunt run-all init`.                                                         |
| `tgxo`  | Run `terragrunt run-all output`.                                                       |
| `tgxp`  | Run `terragrunt run-all plan`.                                                         |

Note that `tgxf` and `tgxff` are missing from this list.
Since terragrunt's `hclfmt` command is automatically recursive, this plugin sticks with terragrunt's definition and doesn't use `x` in its aliases.

### Project-wide Aliases

If your project is a git repository, you can use the extra `tgX` aliases this plugin provides in order to run commands across the whole repository:

| Command | Description                                                                                                            |
|---------|------------------------------------------------------------------------------------------------------------------------|
| `tgXc`  | Recursively clean all `.terragrunt-cache` directories from the root of the repository.                                 |
| `tgXC`  | Recursively clean all `.terragrunt-cache` directories and `.terraform.lock.hcl` files from the root of the repository. |
| `tgXf`  | Run `terragrunt hclfmt` from the root of the repository. (recursive)                                                   |
| `tgXff` | Format both terragrunt and terraform files from the root of the repository. (recursive)                                |
