# -*-mic2-options-*- -f fs --compress-disk-image=tar.bz2 --copy-kernel --record-pkgs=name --pkgmgr=zypp --arch=armv7hl -*-mic2-options-*-
# 
# Do not Edit! Generated by:
# kickstarter.py
# 
lang en_US.UTF-8
keyboard us
timezone --utc UTC
part / --size 3500 --ondisk sda --fstype=ext3

rootpw nemo

user --name nemo --groups audio,video,privileged --password nemo

#repo --name=mer-core  --baseurl=http://releases.merproject.org/releases/latest/builds/armv7hl/packages  --debuginfo
#repo --name=nemo-ux   --baseurl=http://repo.merproject.org/obs/nemo:/devel:/ux/latest_armv7hl/ 
#repo --name=nemo-apps --baseurl=http://repo.merproject.org/obs/nemo:/devel:/apps/latest_armv7hl/ 
#repo --name=nemo-mw   --baseurl=http://repo.merproject.org/obs/nemo:/devel:/mw/latest_armv7hl/ 
#repo --name=mer-qt    --baseurl=http://repo.merproject.org/obs/mer:/qt:/devel/latest_armv7hl/

repo --name=nemo-adaptation-n950-n9-testing --baseurl=http://repo.merproject.org/obs/nemo:/testing:/hw:/ti:/omap3:/n950-n9/latest_armv7hl --includepkgs=linux-firmware-ti-connectivity
repo --name=nemo-adaptation-n950-n9         --baseurl=http://repo.merproject.org/obs/nemo:/devel:/hw:/ti:/omap3:/n950-n9/latest_armv7hl/ 
repo --name=nemo-adaptation-n9xx-common     --baseurl=http://repo.merproject.org/obs/nemo:/devel:/hw:/ti:/omap3:/n9xx-common/latest_armv7hl/ 
repo --name=filippz                         --baseurl=http://repo.merproject.org/obs/home:/filippz/latest_armv7hl/
repo --name=filippz-devel                   --baseurl=http://repo.merproject.org/obs/home:/filippz:/devel/latest_armv7hl/


repo --name=jolla                    --baseurl=http://releases.jolla.com/releases/1.0.8.21/jolla/armv7hl/
repo --name=hotfixes                 --baseurl=http://releases.jolla.com/releases/1.0.8.21/hotfixes/armv7hl/
repo --name=apps                     --baseurl=http://releases.jolla.com/jolla-apps/1.0.8.21/armv7hl/
#repo --name=limited-nemo-mw          --baseurl=http://repo.merproject.org/obs/home:/vgrade:/branches:/nemo:/devel:/mw/latest_armv7hl/
repo --name=jalnmwr                  --baseurl=http://repo.merproject.org/obs/home:/SourenAraya:/branches:/nemo:/devel:/mw/latest_armv7hl/
#repo --name=bme-patched-service-unit --baseurl=http://repo.merproject.org/obs/home:/SourenAraya:/branches:/nemo:/devel:/hw:/ti:/omap3:/n950-n9/latest_armv7hl/ --includepkgs=bme-rm-680-bin
repo --name=mer                      --baseurl=http://repo.merproject.org/obs/home:/vgrade:/branches:/mer-core:/devel/latest_armv7hl/

%packages

#@jolla-mw
qt5-qtmultimedia-plugin-resourcepolicy-resourceqt
qt5-qtmultimedia-plugin-mediaservice-gstcamerabin
alsa-plugins-pulseaudio
statefs-provider-connman
droid-sans-fonts
xdg-utils
droid-sans-mono-fonts
droid-serif-fonts
buteo-mtp-qt5-sync-plugin
jolla-keyboard
bluez-configs-sailfish
bluez-gstreamer
ohm
mce
mce-tools
statefs-provider-keyboard-generic
jolla-firstsession
statefs-provider-mce
qt5-plugin-bearer-connman
statefs-provider-ofono
statefs-provider-profile
qt5-qtsensors-plugin-sensorfw
connman-configs-sailfish
buteo-sync-plugins-qt5
mapplauncherd-privileges-jolla
jolla-preload-pictures
statefs-provider-bluez

#@jolla-core
fontpackages-filesystem
lsb-release
wireless-tools
kbd
wpa_supplicant
#systemd-sysv
iproute
setup
ssu
ofono
xdg-user-dirs
e2fsprogs
pam
shadow-utils
passwd
shared-mime-info
mer-release
prelink
iputils
procps
ssu-vendor-data-jolla
connman
connman-test
connman-tools
readline
rootfiles
rpm
coreutils
basesystem
bash
jolla-ca
crda
busybox-symlinks-gzip
bluez
boardname
net-tools
jolla-common-configurations
nss
deltarpm
usbutils
file
time
util-linux
filesystem
core-reducer
dbus-python
fftune
groff
pulseaudio
pulseaudio-modules-nemo-mainvolume
pulseaudio-modules-nemo-music
pulseaudio-modules-nemo-mainvolume
pulseaudio-modules-nemo-music
pulseaudio-modules-nemo-parameters
pulseaudio-modules-nemo-record
pulseaudio-modules-nemo-stream-restore
pulseaudio-modules-nemo-voice
dbus



#=================================================
#@jolla-configuration-n9

#@jolla-ui-wayland
jolla-sessions-qt5
lipstick-jolla-home-qt5
jolla-actdead-charging

#@jolla-sailfish-applications
all-translations-pack
jolla-handwriting
transferengine-plugins
jolla-vault
jolla-settings-bluetooth
jolla-settings-sync
jolla-contacts
jolla-startupwizard
jolla-settings-accounts
#jolla-camera
jolla-settings-accounts-extensions
jolla-settings-layout
jolla-settings-networking
sailfish-browser
jolla-settings-transferui-qt5
jolla-gallery
voicecall-ui-jolla
jolla-messages
jolla-vault-units
-jolla-xt9
-jolla-xt9-cp
store-client
jolla-settings-system
jolla-hacks
jolla-preload-ambiences


#@jolla-store-applications
jolla-calendar
#yandex-store
jolla-mediaplayer
jolla-clock
jolla-notes
jolla-email
jolla-calculator
sailfish-office

#@jolla-hw-adaptation-n9
        #===========================================================
        #@nokia-n950-support-wayland
        bme-rm-680-bin
        statefs-provider-bme
        dsme
        gstreamer0.10-nokia-videosrc
        gst-omapfb
        linux-firmware-ti-connectivity
        kernel-adaptation-n950
        n950-camera-fw
#        nokia-n950-configs
        nemo-configs-n950-n9
        omap-update-display
        pulseaudio-settings-n950
        #systemd-console-ttyS0
        ti-omap3-sgx
        #ti-omap3-sgx-wayland-wsegl
        #ti-wl1271-firmware
	ti-wl1273-bt-firmware
        ti-wl1273-fm-radio-firmware
        udev-rules-n950
        wl1271-cal-bin
        policy-settings-basic-n950

        usb-moded-config-n950-n9
	omap-update-display
        -usb-moded-settings-sailfish #debug
	strace    #debug
	gdb #debug
	libcmtspeechdata
	libmeegotouchevents-qt5
	libngf-client
	#plymouth-lite
        #===========================================================
qt5-plugin-platform-eglfs
nemo-configs-n950-n9-wayland
qt5-qtwayland-wayland_egl
#=================================================

jolla-common-configurations
libsailfishkeyprovider-data-jolla
libsailfishapp

#pulseaudio-policy-enforcement
jolla-developer-mode
fingerterm




#=== MULTIMEDIA =================================
gst-av
gst-plugins-bad-free
gstreamer0.10-ffmpeg
alsa-utils
#================================================

#===== tools ===========================
nano
zypper
#==== END tools ==============================



%end

%pre
touch $INSTALL_ROOT/.bootstrap
%end

%post
rm $INSTALL_ROOT/.bootstrap

#eval `dbus-launch --auto-syntax` && dconf write /desktop/jolla/components/screen_rotation_angle 0

# Hack to fix the proximity sensor on n950
cat > /usr/sbin/enable_prox << EOF
#!/bin/sh
echo 1 > /sys/devices/platform/i2c_omap.2/i2c-2/2-0039/prox_enable
EOF
chmod +x /usr/sbin/enable_prox

cat > /etc/systemd/system/proximity-fix.service << EOF
[Unit]
Description=Fix proximity sensor on N950

[Service]
Type=oneshot
ExecStart=/usr/sbin/enable_prox
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99

[Install]
WantedBy=multi-user.target
EOF
ln -s /etc/systemd/system/proximity-fix.service /etc/systemd/system/multi-user.target.wants/

# Hack to fix Silica ApplicationWindow swapped width and height on N9
# first we need framebuffer to be 480x854 and disable screen rotation - this will be done by a call from fbset-N9.service
# then we need dconf write /desktop/jolla/components/screen_rotation_angle 0 - this will be done with user service
# on the end we need QT_QPA_EVDEV_TOUCHSCREEN_PARAMETERS="rotate=90" in var/lib/environment/compositor/60-n9-n950-ui.conf to match touchsreen dimensions to newframebuffer dimensions
cat > /usr/sbin/fbset-N9 << EOF
#!/bin/sh

#overlay must be disabled before changes
echo "0" > /sys/devices/platform/omapdss/overlay0/enabled

#kernel sets it rotated (1) trough board-rm680.c basically we get 480x854 + 90 degrees = 854x480. Values are 0/1/2/3 for 0/90/180/270 rotation
echo "0" > /sys/devices/platform/omapdss/display0/rotate

#colorspace settings, and set (-g) x,y sizes, x,y virtual size and bpp - must match display above
/usr/sbin/fbset -rgba 8/16,8/8,8/0,8/24 -g 480 854 480 856 32

#enable overlay
echo "1" > /sys/devices/platform/omapdss/overlay0/enabled
EOF
chmod +x /usr/sbin/fbset-N9

sed -i 's/ExecStart=.*/ExecStart=\/usr\/sbin\/fbset-N9/' /lib/systemd/system/fbset-n9.service

# Hack to set dconf write /desktop/jolla/components/screen_rotation_angle 0
# It's not set by default but needs to be set on N9
cat > /usr/sbin/screen_rotation_angle-N9 << EOF
#!/bin/sh
dconf write /desktop/jolla/components/screen_rotation_angle 0 
dconf write /apps/jolla-startupwizard/reached_tutorial true

EOF
chmod +x /usr/sbin/screen_rotation_angle-N9
chown 100000:100000 /usr/sbin/screen_rotation_angle-N9

cat > /usr/lib/systemd/user/screen_rotation_angle-N9.service << EOF
[Unit]
Description=Fix /desktop/jolla/components/screen_rotation_angle N9
Before=lipstick.service

[Service]
Type=oneshot
ExecStart=/usr/sbin/screen_rotation_angle-N9
TimeoutSec=0
RemainAfterExit=yes
SysVStartPriority=99

[Install]
WantedBy=user-session.target
EOF
ln -s /usr/lib/systemd/user/screen_rotation_angle-N9.service /usr/lib/systemd/user/user-session.target.wants/

#Hack Toucshscreen needs to be rotated to match screen dimensions, and PRE_USER_SESSION_DISPLAY_OPTIONS should be empty
sed -i 's/QT_QPA_EVDEV_TOUCHSCREEN_PARAMETERS=.*/QT_QPA_EVDEV_TOUCHSCREEN_PARAMETERS="rotate=90"/' /var/lib/environment/compositor/60-n9-n950-ui.conf
sed -i 's/PRE_USER_SESSION_DISPLAY_OPTIONS=.*/PRE_USER_SESSION_DISPLAY_OPTIONS=/' /var/lib/environment/compositor/60-n9-n950-ui.conf

## fix permissions
chown -R 100000:100000 /home/nemo

# developer mode password workaround 
sed -i 's/system/privileged/' /etc/dbus-1/system.d/org.nemo.passwordmanager.conf



## rpm-rebuilddb.post from mer-kickstarter-configs package
# Rebuild db using target's rpm
echo -n "Rebuilding db using target rpm.."
rm -f /var/lib/rpm/__db*
rpm --rebuilddb
echo "done"
## end rpm-rebuilddb.post

#if [ "@SSU_RELEASE_TYPE@" = "rnd" ]; then
#   [ -n "@NEMO_RELEASE@" ] && ssu release -r @NEMO_RELEASE@
#    [ -n "@FLAVOUR@" ] && ssu flavour @FLAVOUR@
#    ssu mode 2
#else
#    [ -n "@NEMO_RELEASE@" ] && ssu release @NEMO_RELEASE@
#    ssu mode 4
#fi

## arch-armv7hl.post from mer-kickstarter-configs package
# Without this line the rpm don't get the architecture right.
echo -n 'armv7hl-meego-linux' > /etc/rpm/platform

# Also libzypp has problems in autodetecting the architecture so we force tha as well.
# https://bugs.meego.com/show_bug.cgi?id=11484
echo 'arch = armv7hl' >> /etc/zypp/zypp.conf
## end arch-armv7hl.post

# Remove service to mount debugfs installed by systemd (it causes liptick to crash)
rm -f /lib/systemd/system/sys-kernel-debug.mount
rm -f /lib/systemd/system/sysinit.target.wants/sys-kernel-debug.mount

%end

%post --nochroot
if [ -n "$IMG_NAME" ]; then
    echo "BUILD: $IMG_NAME" >> $INSTALL_ROOT/etc/meego-release
fi

%end
