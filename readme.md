# Docker - PHP skeleton

![banner](./banner.svg)

> This project includes the minimum skeleton to run PHP inside Docker

This image will contains the latest version of composer.

* To build the image, run `make build`,
* To make it available (i.e. create the container), run `make up`. This done the application is live on `http://127.0.0.1:8080`,
* To stop the application, run `make down` and
* To run an interactive shell in the container, run `make bash`.

Note: if you don't have yet GNU make, please first run `sudo apt-get update && sudo apt-get -y install make`.
