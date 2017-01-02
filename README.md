# docker-logrotate
Truncates container logs when they grow in size

## Usage

``` bash
docker run -d -v /var/lib/docker/containers:/var/lib/docker/containers:rw dailyhotel/logrotate
```

Sometimes very large log files are already occupying the most of storages and no place to copy the original log files onto is left on the disk. For such a case, you can set `UP_AND_RUN` environment variable to truncate the container logs immediately:

``` bash
docker run -d -e UP_AND_RUN=true -v /var/lib/docker/containers:/var/lib/docker/containers:rw dailyhotel/logrotate
```
