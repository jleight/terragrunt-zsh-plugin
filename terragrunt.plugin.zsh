function _cdtl() {
  cd "$(command git rev-parse --show-toplevel)"
}

alias tg='terragrunt'
alias tga='terragrunt apply'
alias tgA='terragrunt apply --auto-approve'
alias tgc='rm -rf .terragrunt-cache'
alias tgC='rm -rf .terragrunt-cache; rm .terraform.lock.hcl'
alias tgd='terragrunt destroy'
alias tgD='terragrunt destroy --auto-approve'
alias tgf='terragrunt hclfmt 2> /dev/null'
alias tgff='terragrunt hclfmt 2> /dev/null; terraform fmt -recursive'
alias tgi='terragrunt init'
alias tgo='terragrunt output'
alias tgp='terragrunt plan'
alias tgsd='terragrunt state pull > state.json'
alias tgsI='terragrunt import'
alias tgsl='terragrunt state list'
alias tgsR='terragrunt state rm'
alias tgsU='terragrunt state push state.json && rm state.json'

alias tgx='terragrunt run-all'
alias tgxa='terragrunt run-all apply'
alias tgxA='terragrunt run-all apply --terragrunt-non-interactive'
alias tgxc='rm -rf **/.terragrunt-cache'
alias tgxC='rm -rf **/.terragrunt-cache; rm **/.terraform.lock.hcl'
alias tgxd='terragrunt run-all destroy'
alias tgxD='terragrunt run-all destroy --terragrunt-non-interactive'
alias tgxi='terragrunt run-all init'
alias tgxo='terragrunt run-all output'
alias tgxp='terragrunt run-all plan'

function tgsRR() {
  terragrunt state list | grep $1 | parallel -j 1 terragrunt state rm '{}'
}

function tgXc() {
  (_cdtl && rm -rf **/.terragrunt-cache)
}

function tgXC() {
  (_cdtl && rm -rf **/.terragrunt-cache)
  (_cdtl && rm **/.terraform.lock.hcl)
}

function tgXf() {
  (_cdtl && terragrunt hclfmt 2> /dev/null)
}

function tgXff() {
  (_cdtl && terragrunt hclfmt 2> /dev/null)
  (_cdtl && terraform fmt -recursive)
}
