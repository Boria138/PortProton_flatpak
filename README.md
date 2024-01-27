<div align="center">
  <img src="com.castrofidel.portproton.svg" width="64">
  <h1 align="center"><a href="https://github.com/Castro-Fidel/">Castro-Fidel</a> PortProton's on Flatpak</h1>
  <p align="center">A project designed to make it easy and convenient to run Windows games on Linux for both beginners and advanced users. The project strives to make running games (and other software) as easy as possible, but at the same time provides flexible settings for advanced users</p>
</div>

## ⚠️ Attention
### The project is under development
#### The flathub package installation section is here for demonstration purposes only at the moment it is only possible to build the package via flatpak builder

## 💻 Installation

   ```sh
   flatpak install flathub com.castrofidel.portproton
   ```
   
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
./build.sh
```

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

To enable vkBasalt support install

```sh
flatpak install org.freedesktop.Platform.VulkanLayer.OBSVkCapture
```
