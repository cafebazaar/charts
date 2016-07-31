# Kubernetes Logging
Kubernetes logging addon with ELK.

## References
ElasticSearch definitions from:

[https://github.com/kubernetes/kubernetes/tree/master/examples/elasticsearch](https://github.com/kubernetes/kubernetes/tree/master/examples/elasticsearch)

Kibana definition from:

[https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch](https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch)

Fluentd daemonset from definition of pod in:

[https://github.com/kubernetes/kubernetes/blob/master/cluster/saltbase/salt/fluentd-es/fluentd-es.yaml](https://github.com/kubernetes/kubernetes/blob/master/cluster/saltbase/salt/fluentd-es/fluentd-es.yaml)

## Usage
```bash
$ kupak --repo=github.com/cafebazaar/paks --namespace=kube-system install kubernetes-logging
```
