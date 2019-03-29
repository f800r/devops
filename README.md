# DevOps Repository
Used to test some devops tools.

# Monitoring
Test setup for Prometheus, Alertmanager, Pushgateway and Grafana together with docker-compose
tested with docker on macOS Sierra. 
```
$ docker-compose --version
docker-compose version 1.8.1, build 878cff1
$ docker --version
Docker version 1.12.3, build 6b644ec
```

## Grafana
Simple Dashboard with Prometheus datasource (source in some_metric.json)
http://localhost:3000/dashboard/db/some_metric-job-some_job

## Start Prometheus, Alertmanager, Pushgateway and Grafana
### docker-compose-start.sh - sample run
```
/usr/bin/env bash /IdeaProjects/devops/monitoring/bin/docker-compose-start.sh
   Starting pbu-pushgateway
   Starting pbu-prometheus
   Starting pbu-grafana
   Starting pbu-alertmanager
   Attaching to pbu-pushgateway, pbu-alertmanager, pbu-prometheus, pbu-grafana
   pbu-pushgateway | time="2016-12-03T16:42:41Z" level=info msg="Starting pushgateway (version=0.3.1, branch=master, revision=602f856b0e840cbabc7e4893ea75cf3e9298af3e)" source="main.go:57" 
   pbu-pushgateway | time="2016-12-03T16:42:41Z" level=info msg="Build context (go=go1.7.3, user=root@ddfa0705f939, date=20161103-13:45:57)" source="main.go:58" 
   pbu-pushgateway | time="2016-12-03T16:42:41Z" level=info msg="Listening on :9091." source="main.go:102" 
   pbu-alertmanager | time="2016-12-03T16:42:42Z" level=info msg="Starting alertmanager (version=0.5.0, branch=master, revision=a91fe17ddf0a57c627e2cfcdaa0ab364b1ab3e04)" source="main.go:101" 
   pbu-alertmanager | time="2016-12-03T16:42:42Z" level=info msg="Build context (go=go1.7.3, user=root@f336dcc453a4, date=20161101-18:10:50)" source="main.go:102" 
   pbu-alertmanager | time="2016-12-03T16:42:42Z" level=info msg="Loading configuration file" file="/alertmanager.yml" source="main.go:194" 
   pbu-alertmanager | time="2016-12-03T16:42:42Z" level=info msg="Listening on :9093" source="main.go:249" 
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Starting Grafana" logger=main version=3.1.1 commit=a4d2708 compiled=2016-08-01T10:20:16+0000
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config loaded from" logger=settings file=/usr/share/grafana/conf/defaults.ini
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config loaded from" logger=settings file=/etc/grafana/grafana.ini
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config overriden from command line" logger=settings arg="default.paths.data=/var/lib/grafana"
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config overriden from command line" logger=settings arg="default.paths.logs=/var/log/grafana"
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config overriden from command line" logger=settings arg="default.paths.plugins=/var/lib/grafana/plugins"
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config overriden from Environment variable" logger=settings var="GF_SERVER_ROOT_URL=http://grafana.server.name"
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config overriden from Environment variable" logger=settings var="GF_SECURITY_ADMIN_PASSWORD=*********"
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Config overriden from Environment variable" logger=settings var="GF_AUTH_ANONYMOUS_ENABLED=true"
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Path Home" logger=settings path=/usr/share/grafana
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Path Data" logger=settings path=/var/lib/grafana
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Path Logs" logger=settings path=/var/log/grafana
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Path Plugins" logger=settings path=/var/lib/grafana/plugins
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Initializing DB" logger=sqlstore dbtype=sqlite3
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Starting DB migration" logger=migrator
   pbu-grafana     | t=2016-12-03T16:42:42+0000 lvl=info msg="Starting plugin search" logger=plugins
   pbu-grafana     | t=2016-12-03T16:42:43+0000 lvl=info msg="Server Listening" logger=server address=0.0.0.0:3000 protocol=http subUrl=
   pbu-prometheus  | time="2016-12-03T16:42:43Z" level=info msg="Starting prometheus (version=1.3.1, branch=master, revision=be476954e80349cb7ec3ba6a3247cd712189dfcb)" source="main.go:75" 
   pbu-prometheus  | time="2016-12-03T16:42:43Z" level=info msg="Build context (go=go1.7.3, user=root@37f0aa346b26, date=20161104-20:24:03)" source="main.go:76" 
   pbu-prometheus  | time="2016-12-03T16:42:43Z" level=info msg="Loading configuration file /etc/prometheus/prometheus.yml" source="main.go:247" 
   pbu-prometheus  | time="2016-12-03T16:42:43Z" level=info msg="Loading series map and head chunks..." source="storage.go:354" 
   pbu-prometheus  | time="2016-12-03T16:42:43Z" level=info msg="1651 series loaded." source="storage.go:359" 
   pbu-prometheus  | time="2016-12-03T16:42:43Z" level=info msg="Starting target manager..." source="targetmanager.go:76" 
   pbu-prometheus  | time="2016-12-03T16:42:43Z" level=info msg="Listening on :9090" source="web.go:240" 
   pbu-prometheus  | time="2016-12-03T16:47:43Z" level=info msg="Checkpointing in-memory metrics and chunks..." source="persistence.go:549" 
   pbu-prometheus  | time="2016-12-03T16:47:43Z" level=info msg="Done checkpointing in-memory metrics and chunks in 73.503315ms." source="persistence.go:573" 
   pbu-pushgateway | time="2016-12-03T16:48:46Z" level=info msg="Metrics persisted to '/tmp/persistence'." source="diskmetricstore.go:156" 
   pbu-grafana     | t=2016-12-03T16:49:17+0000 lvl=info msg="Request Completed" logger=context userId=0 orgId=1 uname= method=GET path=/api/dashboards/db/some_metric-job-some_job status=404 remote_addr=172.19.0.1 time_ns=10ns size=33
   pbu-grafana     | t=2016-12-03T16:49:30+0000 lvl=info msg="Request Completed" logger=context userId=1 orgId=1 uname=admin method=GET path=/api/dashboards/db/some_metric-job-some_job status=404 remote_addr=172.19.0.1 time_ns=11ns size=33
   pbu-grafana     | t=2016-12-03T16:50:36+0000 lvl=info msg="Request Completed" logger=context userId=1 orgId=1 uname=admin method=GET path=/api/dashboards/undefined status=404 remote_addr=172.19.0.1 time_ns=731ns size=51
   pbu-prometheus  | time="2016-12-03T16:52:43Z" level=info msg="Checkpointing in-memory metrics and chunks..." source="persistence.go:549" 
   pbu-prometheus  | time="2016-12-03T16:52:43Z" level=info msg="Done checkpointing in-memory metrics and chunks in 65.744907ms." source="persistence.go:573" 
   pbu-pushgateway | time="2016-12-03T16:53:46Z" level=info msg="Metrics persisted to '/tmp/persistence'." source="diskmetricstore.go:156" 
   pbu-alertmanager | time="2016-12-03T16:57:42Z" level=info msg="running maintenance" component=nflog source="nflog.go:229" 
   pbu-alertmanager | time="2016-12-03T16:57:42Z" level=info msg="running maintenance" component=silences source="silence.go:233" 
   pbu-alertmanager | time="2016-12-03T16:57:42Z" level=info msg="maintenance done" component=nflog duration=86.103µs source="nflog.go:246" 
   pbu-alertmanager | time="2016-12-03T16:57:42Z" level=info msg="maintenance done" component=silences duration=197.194µs source="silence.go:250" 
   pbu-prometheus  | time="2016-12-03T16:57:43Z" level=info msg="Checkpointing in-memory metrics and chunks..." source="persistence.go:549" 
   pbu-prometheus  | time="2016-12-03T16:57:43Z" level=info msg="Done checkpointing in-memory metrics and chunks in 102.44672ms." source="persistence.go:573" 
   pbu-pushgateway | time="2016-12-03T16:58:46Z" level=info msg="Metrics persisted to '/tmp/persistence'." source="diskmetricstore.go:156" 

```
## Stop Prometheus, Alertmanager, Pushgateway and Grafana
```
/usr/bin/env bash /IdeaProjects/devops/monitoring/bin/docker-compose-stop.sh
   Stopping pbu-alertmanager ... 
   Stopping pbu-grafana ... 
   Stopping pbu-prometheus ... 
   Stopping pbu-pushgateway ... 
   
   Process finished with exit code 0
```
## Send some sample data
```
/usr/bin/env bash /IdeaProjects/devops/monitoring/bin/pushgateway-send-datasample.sh
Sending in an endless loop data to pushgateway . . . (press CTRL C to finish)
echo "some_metric 7" | curl --data-binary @- http://localhost:9091/metrics/jobs/some_job
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    14    0     0  100    14      0   3845 --:--:-- --:--:-- --:--:--  4666
  % Total    % Received % Xferd  Average Speed   Time    Time     Time Current
                                 Dload  Upload   Total   Spent    Left  Speed
```
## Request Reload of parameter files
```
/usr/bin/env bash /IdeaProjects/devops/monitoring/bin/prometheus-reloadparameterfiles.sh
   Reloading configuration file...  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                    Dload  Upload   Total   Spent    Left  Speed
   100    31  100    31    0     0   4671      0 --:--:-- --:--:-- --:--:--  5166
     % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                    Dload  Upload   Total   Spent    Left  Speed
     0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
   
   Process finished with exit code 0

```
Response in docker protocol:
```
pbu-alertmanager | time="2016-12-03T17:06:02Z" level=info msg="Loading configuration file" file="/alertmanager.yml" source="main.go:194" 
pbu-prometheus   | time="2016-12-03T17:06:02Z" level=info msg="Loading configuration file /etc/prometheus/prometheus.yml" source="main.go:247" 
```

## Cleanup Exited Docker images
```
/usr/bin/env bash /IdeaProjects/devops/monitoring/bin/docker-compose-cleanup.sh
   2a15f65e65a2
   801deab7fda3
   e161769880d7
   fc13913f6024
   
   Process finished with exit code 0
```

## Scripts
Collect some scripts for daily devops