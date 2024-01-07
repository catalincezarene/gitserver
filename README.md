# gitserver

```yaml
services:
  gitserver:
    image: ghcr.io/catalincezarene/gitserver
    volumes:
      - project:/project.git
      - ./post-receive:/project.git/hooks/post-receive
      - ./authorized_keys:/root/.ssh/authorized_keys
    ports:
      - 2222:22
volumes:
  project:
```
