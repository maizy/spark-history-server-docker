# docker container with spark history server

v0.1-beta

## Build

```
docker build -t spark-hs:latest .
```

## Run

```
docker run -d -v /path/to/logs:/logs -p 18080:18080 --name shs spark-hs:latest
```
