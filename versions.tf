terraform {
  required_version = ">= 0.15"

  required_providers {
    dotfiles = {
      version = "0.0.1"
      source  = "github.com/ericmjalbert/dotfiles"
    }
  }
}
