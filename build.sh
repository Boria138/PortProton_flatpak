git submodule init
git submodule update
flatpak-builder --repo=porptroton --force-clean --install-deps-from=flathub build-dir com.castrofidel.portproton.yml
flatpak remote-add --no-gpg-verify --if-not-exists portproton portproton
flatpak install porptroton com.castrofidel.portproton
