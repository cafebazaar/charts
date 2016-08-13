# Kubernetes Logging
Kubernetes logging addon with ELK.

## References
ElasticSearch definitions from:

[https://github.com/cafebazaar/paks/tree/master/paks/elasticsearch-cluster](https://github.com/cafebazaar/paks/tree/master/paks/elasticsearch-cluster)

Kibana definition from:

[https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch](https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch)

With minor changes:
- Kibana 4.5 with from Kibana's official docker image.

Fluentd daemonset from definition of pod in:

[https://github.com/kubernetes/kubernetes/blob/master/cluster/saltbase/salt/fluentd-es/fluentd-es.yaml](https://github.com/kubernetes/kubernetes/blob/master/cluster/saltbase/salt/fluentd-es/fluentd-es.yaml)
