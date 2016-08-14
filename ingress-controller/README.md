# Ingress Controller 

## What is an Ingress Controller?
An Ingress Controller is a daemon, deployed as a Kubernetes Pod, that watches the ApiServer's /ingresses endpoint for updates to the Ingress resource. Its job is to satisfy requests for ingress.

## Installation
```bash
$ helm install ingress-controller
```

## Example

### HTTP Example
```yaml
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: test
spec:
  rules:
  - host: foo.bar.com
    http:
      paths:
      - path: /foo
        backend:
          serviceName: fooSvc
          servicePort: 80
  - host: bar.baz.com
    http:
      paths:
      - path: /bar
        backend:
          serviceName: barSvc
          servicePort: 80
```
### HTTPS Example
This examples uses 2 different certificates to terminate SSL for 2 hostnames.

1. Deploy the controller by creating the rc in the parent dir
2. Create tls secret for foo.bar.com
3. Create rc-ssl.yaml

*Next create a SSL certificate for `foo.bar.com` host:*

```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /tmp/tls.key -out /tmp/tls.crt -subj "/CN=foo.bar.com"
```

*Now store the SSL certificate in a secret:*

```bash
echo "
apiVersion: v1
kind: Secret
metadata:
  name: foo-secret
data:
  tls.crt: `base64 /tmp/tls.crt`
  tls.key: `base64 /tmp/tls.key`
" | kubectl create -f -
```

*Finally create a tls Ingress rule:*

```yaml
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: foo
  namespace: default
spec:
  tls:
  - hosts:
    - foo.bar.com
    secretName: foo-secret
  rules:
  - host: foo.bar.com
    http:
      paths:
      - backend:
          serviceName: echoheaders-x
          servicePort: 80
        path: /
```
