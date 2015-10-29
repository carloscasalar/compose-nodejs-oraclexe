# Docker compose

I'm trying to define a Docker compose with two containers connected. One hosts
an Oracle XE instance and the other a nodejs with Oracle lib installed.
I want to do some crazy task:
* Auto compile pl/sql packages on change.
* Write javascript unit test against pls/sql code.

**Current status:** WORK IN PROGRESS :construction:

## Build an run composer definition
```bash
cd docker/
docker-compose up -d
```

## Log into node container, install and run gulp
```bash
ssh devop@localhost -p 50000
...
devop@localhost''s password: devop
devop@511abe8d09fd:~$ cd dev
devop@511abe8d09fd:~/dev$ sudo npm install -g gulp
devop@511abe8d09fd:~/dev$ npm install
devop@511abe8d09fd:~/dev$ gulp tnsping
...
[20:03:01] Using gulpfile ~/dev/gulpfile.js
[20:03:01] Starting 'tnsping'...
[20:03:01] Finished 'tnsping' after 2.3 ms
PONG => Connection successful!

```
