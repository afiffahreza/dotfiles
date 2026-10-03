# Ubuntu dotfiles

This repo contains my personal configuration managed with `chezmoi`.

It includes a small set of dotfiles for a more usable terminal experience, a few handy aliases, and helper functions for secrets and access workflows used in my environment.

## Included config files

- `dot_zshrc`  
  Shell startup config for zsh, including:
  - oh-my-zsh setup
  - `zoxide` integration for smarter `cd`
  - `nvm` initialization
  - PATH updates
  - sourcing of the Ubuntu helper script

- `dot_aliases`  
  Common shell aliases for:
  - directory navigation
  - listing files
  - SSH shortcuts to internal hosts
  - `juju` status shortcuts
  - `kubectl` conveniences

- `dot_gitconfig`  
  Git settings for default branch naming, pull behavior, editor preferences, and common aliases.

- `dot_gitignore_global`  
  Global ignore rules used across repositories.

- `dot_ubuntu_helper`  
  Ubuntu-specific helper functions for:
  - fetching secrets from the system keyring
  - copying LDAP passwords to the clipboard
  - `vault` login flows
  - `juju` login setup
  - Landscape API environment exports


## Applying the dotfiles

If you manage this repo with `chezmoi`, you can apply it like this:

```bash
chezmoi init <repo-url>
chezmoi apply
```

If the repo is already checked out locally:

```bash
chezmoi apply
```

Then reload your shell:

```bash
source ~/.zshrc
```

## Requirements

This environment assumes the following are available:

- zsh + oh-my-zsh
- `keyring` support for secret retrieval
- `xclip` for clipboard copy support
- `vault`
- `juju`
- `kubectl`
- `zoxide`

## Notes

This is a personal dotfiles repo, so some commands and environment-specific variables are tailored to the author’s infrastructure. If you reuse it, review the helper functions and adjust values such as Vault URLs, service names, and usernames to fit your environment.
