git submodule init
git submodule update
echo 'Please provide your sudo password'

[ "$UID" -eq 0 ] || exec sudo "$0" "$@"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.Platform.Compat.i386//45 org.freedesktop.Platform.GL32.default//23.08 org.freedesktop.Platform.GL32.default//23.08-extra org.winehq.Wine.mono//stable-23.08 org.winehq.Wine.gecko//stable-23.08 org.freedesktop.Platform.ffmpeg-full//23.08 org.freedesktop.Platform.ffmpeg_full.i386//23.08  -y
if [[ -d /sys/module/nvidia ]]
then flatpak install flathub org.freedesktop.Platform.GL32.nvidia-535-154-05 -y
fi
flatpak-builder --repo=local --force-clean --install-deps-from=flathub build-dir com.castrofidel.portproton.yml
flatpak remote-add --no-gpg-verify --if-not-exists local local
flatpak install local com.castrofidel.portproton -y
