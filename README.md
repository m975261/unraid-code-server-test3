# unraid-code-server-test3

> Auto-containerized for Unraid 7.0.1 by **TITAN Dockerizer v2.8**
> Source: [https://github.com/linuxserver/docker-code-server](https://github.com/linuxserver/docker-code-server)

## Docker Image
```
docker pull muaeabudhabi/code-server-test3:latest
```

## Install on Unraid
1. Download `unraid-templates/my-code-server-test3.xml`
2. Copy to `/boot/config/plugins/dockerMan/templates-user/`
3. Docker tab → Add Container → select `code-server-test3`

## Auto-Updates
| Workflow | Schedule | Purpose |
|---------|----------|---------|
| `docker-build.yml` | Push / Manual / Dispatch | Builds multi-arch image → DockerHub |
| `upstream-watch.yml` | Daily 02:00 UTC | Checks upstream releases → triggers rebuild |
