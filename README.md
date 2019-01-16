## Docker for Background Geolocation Console

This docker run the latest version of [Background Geolocation Console](https://github.com/transistorsoft/background-geolocation-console)

### Run

Start the dockers by:

`docker-compose up`

Or use the direct `docker` command:

    docker run \
      -e "GOOGLE_MAPS_API_KEY=YOUR GOOGLE API KEY" \
      -p 9000:9000 \
      -v /path/to/local/db/dir:/srv/background-geolocation-console/src/server/database/db \ 
      gcr.io/epoch-906/kx_bg_geolocation_console:1
      
Use the `-v` flag if DB persistent is required between restarts.

### First time setup

Copy and edit one of the docker-compose example file.

* `docker-compose.yml.dist` - to run the console only.
* `docker-compose-nginx.yml.dist` - to run the console behind an `nginx` proxy with basic-auth authentication.

`cp docker-compose-nginx.yml.dist docker-compose.yml`

If you pick the `nginx` option, dont forget to add user/pass to the `nginx/password` file using the `htpasswd` command.

`htpasswd nginx/passwdfile cool-nick`

### Build

issue:

    docker build -t gcr.io/epoch-906/kx_bg_geolocation_console:1 .