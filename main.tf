terraform {
  backend "local" {}
}

provider "dotfiles" {}


#provider "dotfiles" {
#  home = "/Users/ericjalbert"
#}

# TODO make sure that I can at least read and update a vimrc file (keep a backup first?)
# The source code for the above provider is: /Users/ericjalbert/go/src/github.com/ericmjalbert/terraform-provider-dotfiles
