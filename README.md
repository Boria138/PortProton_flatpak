<div align="center">
  <img src="com.castrofidel.portproton.svg" width="64">
  <h1 align="center"><a href="https://github.com/Castro-Fidel/">Castro-Fidel</a> PortProton's on Flatpak</h1>
  <p align="center">A project designed to make it easy and convenient to run Windows games on Linux for both beginners and advanced users. The project strives to make running games (and other software) as easy as possible, but at the same time provides flexible settings for advanced users</p>
</div>

## 💻 Installation

   ```sh
   flatpak install flathub com.castrofidel.portproton
   ```
   
## Running
Launch PortProton from your desktop menu, or via command line:

```
flatpak run com.castrofidel.portproton
```

Or add an alias that allows you to call PortProton using the `portproton` alias:

```sh
echo "alias portproton='flatpak run com.castrofidel.portproton'" >> ~/.bashrc
```

**You will need to source the updated file with`~/.bashrc` or restart any terminal emulators you have open for the alias to take effect.**

## 🔨 Building

To compile PortProton as a Flatpak, you'll need both [Flatpak](https://flatpak.org/setup/) and [Flatpak Builder](http://docs.flatpak.org/en/latest/flatpak-builder.html) installed. Once you manage that, do the following...

0. Clone this repository and `cd` into it
1. Add the git submodules

   ```sh
   git submodule init
   git submodule update
   ```
   
2. Add flathub remote

   ```sh
   flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
   ```
   
3. Compile the flatpak

   ```sh
   flatpak-builder --repo=local --force-clean --install-deps-from=flathub build-dir com.castrofidel.portproton.yml
   ```
   
4. Add the local repo and install the flatpak

   ```sh
   flatpak remote-add local local --no-gpg-verify
   flatpak install local com.castrofidel.portproton
   ```
