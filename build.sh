git submodule init
git submodule update

if [ ! $(command -v flatpak-builder) ] ; then
    echo "Please install flatpak-builder from repos of your distro or from flatpak"
    exit 1
fi
flatpak-builder --repo=local --force-clean --install-deps-from=flathub build-dir ru.linux_gaming.PortProton.yml
sudo flatpak remote-add --no-gpg-verify --if-not-exists local local
flatpak install local ru.linux_gaming.PortProton -y
