# About

Home-manager configuration for reproducible dev environment setup on Fedora Linux.

## Structure
```
.
├── flake.nix          # Entrypoint, inputs & outputs
├── home.nix           # Root home-manager config
├── modules/
│   ├── home-manager.nix  # Base settings, shell, packages
│   ├── apps/             # GUI applications
│   └── packages/         # CLI tools & dev packages
└── Makefile           # Shortcuts
```

## Bootstrap

Install Nix:
```bash
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon
```

[Nix - Official Site](https://nixos.org/download/)

Install home-manager and apply:
```bash
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager 
nix-channel --update

nix-shell '<home-manager>' -A install
```

[Home Manager - Official Site](https://nix-community.github.io/home-manager/)

Enable experimental features:
```bash
touch ~/.config/nix/nix.conf 
experimental-features = nix-command flakes
```

Install dependencies:
```bash
home-manager switch --flake ~/.config/home-manager
```

## Commands

| Command | Description |
|---|---|
| `make sync` | Apply configuration |
| `make format` | Format all `.nix` files |
| `make format-check` | Check formatting |
| `make lint` | Fix lint issues |
| `make lint-check` | Check lint |
| `make cleanup` | Remove dead code |
| `make cleanup-check` | Check dead code |