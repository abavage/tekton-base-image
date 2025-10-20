## Setup 

### Red Hat Authenticated Regestries 
```
$ oc create secret docker-registry redhat-pull-secret --from-file=/pull-secret/.dockerconfigjson -n image-builds

$ oc secrets link pipeline redhat-pull-secret --for=pull,mount -n image-builds
```

### Quay.io Authenitcated
```
$ oc create secret docker-registry quay-credentials --docker-server="quay.io" --docker-username="<email_address>" --docker-password="<passwd>" -n image-builds

oc secrets link pipeline quay-credentials --for=pull,mount -n image-builds
```