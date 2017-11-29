# Icecast Docker

## Usage
- Create Icecast config file `icecast.xml`
   - Example is provided in `/example/etc/icecast2/icecast.xml`
- Mount directory containing `icecast.xml` as `/etc/icecast2`
- (Optional) Mount a logs directory as `/var/log/icecast2`
- Run container with mapping for port 8000

Example:
```bash
docker build -t icecast docker/.
docker run -p 8000:8000 -v $PWD/example/etc/icecast2:/etc/icecast2 icecast
```