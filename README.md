# docker-compose-all
Run a specified `docker compose` command in every directory with a `docker-compose.yml` file in the current directory tree recursively.

## Example

You have the following folder structure and each directory has a `docker-compose.yml`:

```
/etc/docker-services
├── gitea
├── nginx-proxy-manager
└── sftpgo
```

`cd` into `/etc/docker-services` and then run your compose command with `docker-compose-all up -d`. This will run the `docker compose up -d` command in each of the three sub directories.

## Install

```sh
wget --quiet --output-document /usr/local/bin/docker-compose-all https://raw.githubusercontent.com/ioqy/docker-compose-all/main/docker-compose-all
chmod +x /usr/local/bin/docker-compose-all
```

## Uninstall

```sh
rm /usr/local/bin/docker-compose-all
```
