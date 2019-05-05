## Deploying the image manipulation code to OpenShift

Go to the terminal in the upper right-hand corner of the screen. (The terminal in the lower right is running 
some code that we'll look at shortly.)

- Make sure you're in the `~/projects/image-overlay` directory. 
```
cd ~/projects/image-overlay
```
- Make sure the `oc` command is using the project `knativetutorial`. 
```
oc project
```
- Now use the file `service.yaml` to deploy the service. 
```
oc apply -f service.yaml -n knativetutorial
```

(Because you're using the `knativetutorial` project the `-n knativetutorial` bit isn't technically necessary, but 
IMHO it's a good idea to be specific about where you want a service deployed.)

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

This defines a service named `overlayimage` that is implemented inside the Docker image `imageoverlay:v1` inside the account 
`dougtidwell` at `docker.io`. If that image is in the cache (if you're doing this exercise on our machine, it will be), the
service starts quickly. Otherwise, Knative Serving will retrieve it from Dockerhub. 