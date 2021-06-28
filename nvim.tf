#resource "dotfiles_nvim" "this" {
#  version = "0.3.7"
#  vimrc = "${path.module}/.vimrc"
#}

data "dotfiles_vimrc" "nvim" {}

output "test" {
  value = data.dotfiles_vimrc.nvim.filename
}
