locals {
  brew_installs = [
    "ack",
    "jq",
    "wget",
  ]
}

resource "dotfiles_brew" "install" {
  for_each = toset(local.brew_installs)

  install = each.key
}
