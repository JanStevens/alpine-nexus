alpine-nexus
=============

A image to run nexus server. It's based in alpine-jvm8.

## Build

```
docker build -t rawmind/alpine-nexus:<version> .
```

## Versions

- `2.12.1-01-3` [(Dockerfile)](https://github.com/rawmind0/alpine-nexus/blob/2.12.1-01-3/Dockerfile)

## Usage

To start the nexus service, exec

```
docker run -td -v <volume>:/opt/sonatype-work/nexus rawmind/alpine-nexus:<version> .
```

You could configure nexus mem params in execution time, setting that variables:
- HEAP_MIN="256"
- HEAP_MAX="768"

## Storage

If you want to assure data persintence, you need a persintent volume on /opt/sonatype-work/nexus

## Auth

Default admin user: admin
Default admin pass: admin123
