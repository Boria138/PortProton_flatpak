git submodule init
git submodule update
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.gnome.Platform.Compat.i386//45 org.freedesktop.Platform.GL32.default//23.08 org.freedesktop.Platform.GL32.default//23.08-extra  -y
if [[ -d /sys/module/nvidia ]]
then flatpak install --user flathub org.freedesktop.Platform.GL32.nvidia-535-154-05 -y
fi
flatpak-builder --user --repo=local --force-clean --install-deps-from=flathub build-dir com.castrofidel.portproton.yml
flatpak --user remote-add --no-gpg-verify --if-not-exists local local
flatpak install local com.castrofidel.portproton -y
