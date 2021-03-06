# GNOME desktop look'n'feel

chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/gtk_theme Sammy --type string
# Metacity theme
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/metacity/general/theme Sammy --type string
# Cursor theme
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/peripherals/mouse/cursor_theme OpenZone_Black --type string
# Background image
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/background/picture_filename /usr/share/backgrounds/gnome/Terraform-blue.jpg --type string
# Background painting options
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/background/picture_options zoom --type string
# Icon theme
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/icon_theme elementary-monochrome --type string
# Fonts
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/document_font_name "Droid Sans 10" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/nautilus/preferences/desktop_font "Droid Sans 10" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/metacity/general/titlebar_font "Droid Sans Bold 10" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/font_name "Droid Sans 10" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/interface/monospace_font_name "Terminus 10" --type string

# Font rendering
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/font_rendering/antialiasing "rgba" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/font_rendering/hinting "full" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/font_rendering/rgba_order "rgb" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/font_rendering/dpi 96 --type float

# Rhythmbox
# Disabling Magnatune store
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/magnatune/active false --type bool
# Hide Magnatune store due a bug
# Don't fill me bugs about Magnatune, please
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/magnatune/hidden true --type bool
# Status icon in tray.
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/status-icon/active true --type boot
# DAAP plugin doesn't work, disable it:
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/daap/active false --type boot
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/rhythmbox/plugins/daap/hidden true --type boot

# Default apps setup
# Firefox as default browser. I like Chromium, but Firefox is more stable
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/browser/exec firefox --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/browser/needs_term false --type bool
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/browser/nremote true --type bool
# SMPlayer as default player
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/applications/media/exec smplayer --type string

# Another stuff
# This section will be handled by installer soon
# Default keyboard layouts.
# FIXME: We shouldn't hardcode US and RU layouts for all! Maybe, it's better to override this stuff in installer
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/peripherals/keyboard/kbd/layouts [us,ru] --type list --list-type string
# Keyboard options
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /desktop/gnome/peripherals/keyboard/kbd/options "[grp	grp:alt_shift_toggle,Compose key	compose:ralt]" --type list --list-type string

# gnome-terminal profile: defaults are sad
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/gnome-terminal/profiles/Default/use_theme_colors false --type bool
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/gnome-terminal/profiles/Default/background_color "#000000000000" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/gnome-terminal/profiles/Default/foreground_color "#FFFFFFFFFFFF" --type string

# Unneeded and broken icons on panel
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/panel/default_setup/objects/browser_launcher/launcher_location "mozilla-firefox.desktop" --type string
chroot . usr/bin/gconftool-2 --direct --config-source xml:readwrite:etc/gconf/gconf.xml.defaults --set /apps/panel/default_setup/objects/email_launcher/launcher_location "mozilla-thunderbird.desktop" --type string
