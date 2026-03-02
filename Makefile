sync:
	home-manager switch --flake ~/.config/home-manager

cleanup-check:
	deadnix .

cleanup:
	deadnix --edit .

lint-check:
	statix check .

lint:
	statix fix .

format-check:
	find . -name "*.nix" | xargs nixfmt --check

format:
	find . -name "*.nix" | xargs nixfmt