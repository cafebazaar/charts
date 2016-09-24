# Monitoring 

Kubernetes monitoring chart using heapster and influxdb.
[Heapster Github](https://github.com/kubernetes/heapster/tree/master/deploy/kube-config/influxdb)

## Installation
1. install the chart via helm
2. label **only** one of your nodes `monitoring=true` (this is because of using DaemonSet)
3. you can access grafana at `/api/v1/proxy/namespaces/monitoring/services/monitoring-grafana/`
