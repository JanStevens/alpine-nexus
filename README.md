alpine-nexus
=============

A image to run nexus server. It's based in alpine-jvm8.

## Build

```
docker build -t rawmind/alpine-nexus:<version> .
```

## Versions

- `2.12.1-01` [(Dockerfile)](https://github.com/rawmind0/alpine-nexus/blob/master/Dockerfile)

## Usage

To start the nexus service, exec

```
docker run -td -v <volume>:/opt/sonatype-work/nexus rawmind/alpine-nexus:<version> .
```

## Storage

If you want to assure data persintence, you need a persintent volume on /opt/sonatype-work/nexus
