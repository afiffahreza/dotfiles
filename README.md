# Ubuntu dotfiles

This repo contains my personal configuration managed with `chezmoi`.

It includes a small set of dotfiles for a more usable terminal experience, a few handy aliases, and helper functions for secrets and access workflows used in my environment.


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
