Let's begin my creating a new project called `compiledriver`:

```
oc new-project compiledriver
```{{execute}}

With the project created, deploy the service to Knative via a YAML file: 

```
oc apply -f service.yaml
```{{execute}}

The YAML file you just deployed looks like this: 

```
apiVersion: serving.knative.dev/v1alpha1
kind: Service
metadata:
  name: overlayimage
spec:
  runLatest:
    configuration:
      revisionTemplate:
        spec:
          container:
            image: docker.io/dougtidwell/imageoverlay:v1
``` 

This defines a service named `overlayimage` that is implemented inside the Docker image `dougtidwell/imageoverlay:v1` at `docker.io`. 