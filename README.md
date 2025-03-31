# mborne/terminal

A simple alpine based image with debug tools (curl, wget, ping,...) running an infinite loop.

## Usage with docker

```bash
# build docker image
docker build -t terminal .

# test image
docker run --rm -ti terminal /bin/sh
# Get outgoing IP :
# curl -sS https://api.ipify.org/
```

## Usage with Kubernetes

See [manifest/pod-terminal.yaml](manifest/pod-terminal.yaml) :

```bash
# create pod
kubectl apply -f https://raw.githubusercontent.com/mborne/terminal/refs/heads/master/manifest/pod-terminal.yaml

# open terminal
kubectl exec -ti terminal -- /bin/sh
# Get outgoing IP :
# curl -sS https://api.ipify.org/

# ...then delete pod
kubectl -n kube-public exec -ti terminal -- /bin/sh
```

## License

[MIT](LICENSE)
