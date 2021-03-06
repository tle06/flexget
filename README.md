[![](https://images.microbadger.com/badges/image/tlnk/flexget.svg)](https://microbadger.com/images/tlnk/flexget "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/tlnk/flexget.svg)](https://microbadger.com/images/tlnk/flexget "Get your own version badge on microbadger.com")

# Flexget

![Screenshot](https://flexget.com/_static/flexget.png)

# Supported tags and respective

* latest [Dockerfile](https://github.com/tle06/flexget/blob/master/Dockerfile)

This image is updated via pull requests to the tle06/flexget GitHub repo.

# Sources
[github/flexget](https://github.com/tle06/flexget.git)

[flexget](https://flexget.com/)

# What is lychee
FlexGet is a multipurpose automation tool for all of your media
Support for torrents, nzbs, podcasts, comics, TV, movies, RSS, HTML, CSV, and more..

# Image configuration
## Package installed
* python3.5
* python-pip
* cron

## Work dir
* workdir = /config

# How to use this image
## Start flexget

Starting the lychee instance listening on port 80 is as easy as the following:
``` Docker
$ docker run -d --restart=always tlnk/flexget
```

## Persistent data

* -v /`<mydatalocation>`:/config (save configuration file from flexget)

## Via docker-compose

```
Docker
version: '2'

services:

flexget:
 image: tlnk/flexget

```
