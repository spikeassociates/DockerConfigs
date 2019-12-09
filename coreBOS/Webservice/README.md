# Docker for coreBOS Webservice

- build the image with `docker build .`
- execute the image with

```
docker run -v /var/www/coreBOSWS:/var/www/html -v /sessions:/tmp -p 8080:8080 --env-file=cbenv {imageid}
```

where

- `/var/www/coreBOSWS` is a shared volume for all the running containers that [has the contents of this repository](https://github.com/spikeassociates/coreBOSWS)
- `/sessions` is a shared volume for all the running containers to share the session login
- `cbenv` is a set of environment variables necessary to connect to the database

you can use ping.php for a health check

This image is based on the work of TrafeX. I copy his readme next.

# Docker PHP-FPM 7.3 & Nginx 1.16 on Alpine Linux
Example PHP-FPM 7.3 & Nginx 1.16 setup for Docker, build on [Alpine Linux](http://www.alpinelinux.org/).
The image is only +/- 35MB large.

Repository: https://github.com/TrafeX/docker-php-nginx

* Built on the lightweight and secure Alpine Linux distribution
* Very small Docker image size (+/-35MB)
* Uses PHP 7.3 for better performance, lower cpu usage & memory footprint
* Optimized for 100 concurrent users
* Optimized to only use resources when there's traffic (by using PHP-FPM's ondemand PM)
* The servers Nginx, PHP-FPM and supervisord run under a non-privileged user (nobody) to make it more secure
* The logs of all the services are redirected to the output of the Docker container (visible with `docker logs -f <container name>`)
* Follows the KISS principle (Keep It Simple, Stupid) to make it easy to understand and adjust the image

### Breaking changes (26/01/2019)

Please note that the new builds since 26/01/2019 are exposing a different port to access Nginx.
To be able to run Nginx as a non-privileged user, the port it's running on needed
to change to a non-privileged port (above 1024).

The last build of the old version that exposed port 80 was `trafex/alpine-nginx-php7:ba1dd422`

## Usage

Start the Docker container:

    docker run -p 80:8080 trafex/alpine-nginx-php7

See the PHP info on http://localhost, or the static html page on http://localhost/test.html

Or mount your own code to be served by PHP-FPM & Nginx

    docker run -p 80:8080 -v ~/my-codebase:/var/www/html trafex/alpine-nginx-php7
