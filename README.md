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
├── pkgs/              # Custom package definitions
└── Makefile           # Shortcuts
```

## Bootstrap

Install Nix:
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

Install home-manager and apply:
```bash
nix run home-manager/master -- init --switch
make sync
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