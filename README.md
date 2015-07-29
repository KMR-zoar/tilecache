#TileCache Docker File
This repository contains Dockerfile of [TileCache](http://tilecache.org/) Dcoker's automated build.  

##Base Docker Image
+ debian:latest

##Installation
### Clone this repository

```
$ git clone https://github.com/KMR-zoar/tilecache.git
```

### Build dcoker contains

```
$ cd tilecache
$ docker build -t zoar/tilecache .
```

### Edit the configuration file
Edit the `/etc/tilecache` of the configure file in contains.

### Run tilecache contains
You have to be able to connect the port 8080 of contains.  
Recommended that you specify a cache directory with `-v` option.

```
$ mkdir -p /tmp/tilecache
$ docker run -i -d -p 8080:8080 -v /tmp/tilecache/:/tmp/tilecache/ -t zoar/tilecache
```
