## Docker for Background Geolocation Console

This docker run the latest version of [Background Geolocation Console](https://github.com/transistorsoft/background-geolocation-console)

### Run

`docker-compose up`

#### First time setup

Create `db` dir

Run to initialize an empty DB:

    sqlite3 background-geolocation.db "create table aTable(field1 int); drop table aTable;"

### Build

issue:

    docker build -t gcr.io/epoch-906/kx_bg_geolocation_console:1 .