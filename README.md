<div align="center">
  <img src="com.castrofidel.portproton.svg" width="64">
  <h1 align="center"><a href="https://github.com/Castro-Fidel/">Castro-Fidel</a> PortProton's on Flatpak</h1>
  <p align="center">A project designed to make it easy and convenient to run Windows games on Linux for both beginners and advanced users. The project strives to make running games (and other software) as easy as possible, but at the same time provides flexible settings for advanced users</p>
</div>

> [!WARNING]
> The project is under development
> The flathub package installation section is here for demonstration purposes only at the moment it is only possible to build the package via flatpak builder

## 💻 Installation

### From FlatHub

   ```sh
   flatpak install flathub com.castrofidel.portproton
   ```
   
### From Bundle

```sh
flatpak install portproton.flatpak
flatpak install org.freedesktop.Platform.GL32.default org.winehq.Wine.gecko org.winehq.Wine.mono org.gnome.Platform.Compat.i386 org.freedesktop.Platform.ffmpeg-full org.freedesktop.Platform.ffmpeg_full.i386
```

If you used nvidia install **org.freedesktop.Platform.GL32.nvidia**

## Running
Launch PortProton from your desktop menu, or via command line:

```sh
flatpak run com.castrofidel.portproton
```

Or add an alias that allows you to call PortProton using the `portproton` alias:

```sh
echo "alias portproton='flatpak run com.castrofidel.portproton'" >> ~/.bashrc
```

**You will need to source the updated file with`~/.bashrc` or restart any terminal emulators you have open for the alias to take effect.**

## 🔨 Building

To compile PortProton as a Flatpak, you'll need both [Flatpak](https://flatpak.org/setup/) and [Flatpak Builder](http://docs.flatpak.org/en/latest/flatpak-builder.html) installed. Once you manage that, do the following...

```sh

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.gnome.Platform.Compat.i386 org.freedesktop.Platform.GL32.default org.winehq.Wine.mono org.winehq.Wine.gecko org.freedesktop.Platform.ffmpeg-full org.freedesktop.Platform.ffmpeg_full.i386

./build.sh
```

If you used nvidia install **org.freedesktop.Platform.GL32.nvidia**

### MangoHud

To enable MangoHud support install

```sh
flatpak install flathub org.freedesktop.Platform.VulkanLayer.MangoHud
```

### Gamescope

To enable Gamescope support install

```sh
flatpak install org.freedesktop.Platform.VulkanLayer.gamescope
```

### vkBasalt

To enable vkBasalt support install

```sh
flatpak install org.freedesktop.Platform.VulkanLayer.vkBasalt
```

### OBSVkCapture

To enable OBSVkCapture support install

```sh
flatpak install org.freedesktop.Platform.VulkanLayer.OBSVkCapture
```


### Wine

To use system wine install

```sh
flatpak install org.winehq.Wine
```
