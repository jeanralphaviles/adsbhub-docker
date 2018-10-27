# ADSBHub feeder Docker image

[![Docker Build Status](https://img.shields.io/docker/build/jraviles/adsbhub.svg)](https://hub.docker.com/r/jraviles/adsbhub/)
[![GitHub](https://img.shields.io/github/license/jeanralphaviles/adsbhub-docker.svg)](https://github.com/jeanralphaviles/adsbhub-docker)

Feed data from [dump1090](https://github.com/flightaware/dump1090) to
[ADSBHub](http://www.adsbhub.org/) quickly and easily with Docker! Works best
with [dump1090-docker](https://github.com/jeanralphaviles/dump1090-docker).

## Usage

### Run

1. [Register for an ADSBHub account](http://www.adsbhub.org/register.php).

1. [Register a new ADS-B station](http://www.adsbhub.org/howtofeed.php).

   Follow instructions on "Adding your ADS-B station to ADSBHub."

1. Run [dump1090-docker](https://github.com/jeanralphaviles/dump1090-docker).

   Find instructions on the Github page.

1. Run adsbhub.

   ```shell
   docker run --rm -d --link dump1090 --name adsbhub jraviles/adsbhub:latest
   ```

### Building the Docker image locally

```shell
docker build -t jraviles/adsbhub:latest .
```

## Maintenance

### Uploading new images to Docker Hub

1. Build and push the new image.

   ```shell
   # Make sure you have run docker login
   docker build -t jraviles/adsbhub:<arch> .
   docker push jraviles/adsbhub:<arch>
   ```

1. Build and push a new manifest with
   [manifest-tool](https://github.com/estesp/manifest-tool).

   ```shell
   # Install manifest-tool
   manifest-tool push from-spec manifest-adsbhub.yml
   ```

Supported architectures:

| architecture 	|
|--------------	|
| amd64        	|
| arm64        	|
