# titus-fedora-desktop
A unofficial script to install Chris Titus's fedora desktop.

## To get started...

1. Download fedora server 36 onward [(Fedora 36 Download here)](https://download.fedoraproject.org/pub/fedora/linux/releases/test/36_Beta/Server/x86_64/iso/Fedora-Server-netinst-x86_64-36_Beta-1.4.iso)
2. In the installer, under "Software Selection", select the following options.
 * Fedora custom operating system

```
* Fedora custom operating system
  	-> Window Managers
	-> Standard
	-> Sound and Video
```

3. Once you have finished the installation, log in as your user and issue the following commands.
```shell
sudo dnf -y install git
git clone https://github.com/tuxisawesome/titus-fedora-desktop/
cd titus-fedora-desktop
bash start.sh
```
4. Let the script do its magic!
