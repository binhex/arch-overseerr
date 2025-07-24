# Application

[Overseerr](https://github.com/sct/overseerr)

## Description

Overseerr is a request management and media discovery tool built to work with
your existing Plex ecosystem. Overseerr helps you find media you want to watch.
With inline recommendations and suggestions, you will find yourself deeper and
deeper in a rabbit hole of content you never knew you just had to have.

## Build notes

Latest development build of Overseerr from Arch Linux AUR.

## Usage

```bash
docker run -d \
    -p 5055:5055 \
    --name=<container name> \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e HEALTHCHECK_COMMAND=<command> \
    -e HEALTHCHECK_ACTION=<action> \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-overseerr
```

Please replace all user variables in the above command defined by <> with the
correct values.

## Access application

`http://<host ip>:5055`

## Example

```bash
docker run -d \
    -p 5055:5055 \
    --name=overseerr \
    -v /apps/docker/overseerr:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-overseerr
```

## Notes

User ID (PUID) and Group ID (PGID) can be found by issuing the following command
for the user you want to run the container as:-

```bash
id <username>
```

___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.unraid.net/topic/122509-support-binhex-overseerr/#comment-1117451)
