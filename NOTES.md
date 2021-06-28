# Highlevel Overview

I want to be able to manage ALL my apps and configs with this. Couple requirements:

1. Need to be able to reformat Macbook and run a command (or couple commands) to get it back into working order. This should account for as much as possible, passwords and generating tokens included.

2. I want to be able to manage changes in any config across the different devices. I have 2 macbooks and I'd like them to share all the same config. Ideally I could go from one computer to the other and have all the same dev setup.
    * Bonus point if I'm able to do the same for Linux-compatible confgis (ie. git and nvim, tmux)

3. If something goes wrong with a config, I want to be able to go "back" to a previously working config.


# Possible Solutions

## Terraform with custom provider

Write up a terraform provider/resource that can take a config file and an application name as arguments and it'll install/update/modify the application using normal terraform methods.

Pros:
* This uses terraform, and I want to learn more about terraform
* This handles all the requirements
* Terraform plans should give me a good idea of what's changed before I do any modifications

Cons:
* Writing my own provider/resource seems like a lot of work?
* Managing state drift whenever I do manual changes might be tricky
* Managing a local resource is "kinda" not the point of terraform? Not 100% on it.

## Ansible

Write up an ansible playbook that does all the setup. Have some "if" statements (don't know the ansible name for them), to ensure that ansible is an idempotent operations.

Pros:
* I haven't used Ansible in a while so it' be nice to re-learn it
* Same pros as Terraform, but the commands I'd be running are more aligned with how Ansible is supposed to be used.

Cons:
* I haven't used Ansible in a while and I'm not currently using it at work it's a bit of a waste.

## Just Mackup and simple bash scripts

Add to my dotfiles repo and just have more scripts to install different applications.

Pros:
* Very easy to do.
* it's pretty much the industry norm, so there are 100's of examples

Cons:
* Not very exciting
* Have to build all the parts of it myself, it's pretty DIY
