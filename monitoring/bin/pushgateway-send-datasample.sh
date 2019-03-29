#!/usr/bin/env bash
#
SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#
echo "Sending in an endless loop data to pushgateway . . . (press CTRL C to finish)"
#
#Query Value:
#curl -sgG --data-urlencode 'query=some_metric{job="some_job"}' http://localhost:9090/api/v1/query
#
while :; do
  echo "some_metric 9" | curl --data-binary @- http://localhost:9091/metrics/jobs/some_job
  curl -sgG --data-urlencode 'query=some_metric{job="some_job"}' http://localhost:9090/api/v1/query
  sleep 3
done