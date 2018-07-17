docker-cups
===========

cups 1.7.1 inside debian:sid

## To Build

```bash
docker build -t "docker-cups:1.0" .
```

## To Run

```bash
docker run -it --rm -p 631:631/tcp docker-cups:1.0 /bin/bash
```

## ipptool location

/usr/share/cups/


## Get printout 

```bash
docker cp <container_id>:/tmp/tofile.out out.ps
```

# Add Printer

