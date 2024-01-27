git submodule init
git submodule update
flatpak-builder --user --repo=local --force-clean --install-deps-from=flathub build-dir com.castrofidel.portproton.yml
flatpak --user remote-add --no-gpg-verify --if-not-exists local local
flatpak install local com.castrofidel.portproton
