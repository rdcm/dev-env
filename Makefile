sync:
	home-manager switch --flake ~/.config/home-manager

docker:
	# https://docs.docker.com/engine/install/fedora/
	sudo dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo
	sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	sudo systemctl enable --now docker

	# disable sudo
	sudo usermod -aG docker $USER
	newgrp docker

flatpak:
	flatpak install -y --noninteractive flathub \
		md.obsidian.Obsidian \
		org.telegram.desktop \
		com.getpostman.Postman \
		com.mattermost.Desktop \
		one.flipperzero.qFlipper

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