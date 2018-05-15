# Icecast Docker

- Create Icecast config file `icecast.xml`
   - Example is provided in `/sample/icecast.xml`
- Mount directory containing `icecast.xml` as `/etc/icecast2`
- (Optional) Mount a logs directory as `/var/log/icecast2`
- Run container with mapping for port 8000

Local:
```bash
docker build -t icecast .
docker run -p 8000:8000 -v $PWD/sample-icecast2:/etc/icecast2 icecast
```

Prod:
```bash
docker run -p 8000:8000 -v <CONFIG_DIR>:/etc/icecast2 7digital/icecast-docker
```
