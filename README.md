# HTTP mock server

[![Build Status](https://travis-ci.org/gguridi/http-mockserver.svg?branch=master)](https://travis-ci.org/gguridi/http-mockserver)

This repository contains the code to generate docker images to easily mock an
http server that will return specific responses to the configured requests. It's intended to
be used in testing/development environment for easily check integrations.

These docker images are not intended to be used in production environments or
scenarios where you need more control over the instance settings. This alpine-based
images are intended to be as small as possible but they haven't been tuned in
terms of performance.

This docker image is based on `mockserver` library:

-   [mockserver](https://www.npmjs.com/package/mockserver)

## Build

To build the docker image from scratch:

```bash
docker build -t {name:tag} .
```

## Usage

Read the documentation about how to configure [mockserver](https://github.com/namshi/mockserver).

This docker image uses the [mock files](https://github.com/namshi/mockserver#mock-files) expected by the `mockserver` library directly from the path `/opt/api`. To make them available we must mount our local folder containing those files ({path-to-mock-files} in this documentation) into the `/opt/api` folder:

To run a basic instance:

```bash
docker run -d -p 80:80 -v {path-to-mock-files}:/opt/api gguridi/http-mockserver:latest
```
