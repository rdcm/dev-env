sync:
	home-manager switch --flake ~/.config/home-manager

flatpaks:
	flatpak install -y --noninteractive flathub \
		md.obsidian.Obsidian \
		org.telegram.desktop \
		com.getpostman.Postman \
		com.mattermost.Desktop \
		one.flipperzero.qFlipper \
		com.visualstudio.code \
		com.jetbrains.RustRover \
		com.jetbrains.GoLand

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