ARG FEDORA_MAJOR_VERSION=37

FROM ghcr.io/cgwalters/fedora-silverblue:37
# See https://pagure.io/releng/issue/11047 for final location

RUN rpm-ostree uninstall gnome-control-center gnome-control-center-filesystem gnome-shell mutter gdm gnome-shell-extension-common gnome-session gnome-session-xsession gnome-classic-session gnome-session-wayland-session gnome-initial-setup gnome-shell-extension-background-logo gnome-shell-extension-window-list gnome-shell-extension-places-menu gnome-browser-connector gnome-shell-extension-launch-new-instance gnome-shell-extension-apps-menu
RUN rpm-ostree install bspwm rofi fastfetch dmenu picom sxhkd nitrogen polybar brightnessctl pavucontrol alacritty neovim sddm

RUN systemctl disable gdm
RUN systemctl enable sddm 
