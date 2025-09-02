This is a collection of Distroboxes for personal usage.

# Lists

## Kritabox

Krita flatpak does not work properly with the Breeze style (I believe there are still bugs being ironed out about the Breeze style), but it's pretty weird for a KDE app to look out of place in KDE Plasma, so I decided to include it here (Do NOT report any bugs to upstream)

```
distrobox-export --app /usr/share/applications/org.kde.krita.desktop
```

## Trivalentbox

Trivalent is a browser intended to be used on secureblue. Using it as a distrobox will lack SELinux confinement that exists on secureblue.

```
distrobox-export --app /usr/share/applications/trivalent.desktop
```

## Rstudio

Rstudio is an IDE to be used with the language "R". It is pain to setup, so I had a distrobox here. (I recommend naming the distrobox Rstudiobox instead of Rstudio, otherwise the app one launch)

```
distrobox-export --app /usr/share/applications/rstudio.desktop
```

## Worldpainterbox

Worldpainter is a program that can be used to make Minecraft terrains as you wish.

```
distrobox-export --app /opt/worldpainter/worldpainter.desktop
```

## Blenderbox

If you use NVIDIA, feel free to ignore this. This is mainly for HIP support in AMD GPUs.

```
distrobox-export --app /usr/share/applications/blender.desktop
```

## Hardinfobox

Looking at hardware info

```
distrobox-export --app /usr/share/applications/hardinfo2.desktop
```

## Gsmartcontrolbox

Look at the health of a drive

```
distrobox-export --app /usr/share/applications/gsmartcontrol.desktop
```


# Update

Copy the quadlets files to ~/.config/containers/systemd and run `systemctl enable --now podman-auto-update`

alternatively to manually update `podman pull <name of the distrobox>` and then restart the distrobox.
