# Icecast Docker

- Create Icecast config file `icecast.xml`
   - Example is provided in `/sample/icecast.xml`
- Mount directory containing `icecast.xml` as `/etc/icecast2`
- (Optional) Mount a logs directory as `/var/log/icecast2`
- Run container with mapping for port 8000

Local:
```bash
docker build -t icecast .
docker run -p 8000 -v $PWD/sample-icecast2:/etc/icecast2 icecast
```

Prod:
```bash
# login to AWS ECR
$(aws ecr get-login --no-include-email --region eu-west-1)

docker run -p 8000:8000 -v <CONFIG_DIR>:/etc/icecast2 688831519746.dkr.ecr.eu-west-1.amazonaws.com/icecast:latest
```
