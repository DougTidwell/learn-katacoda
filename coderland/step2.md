Let's begin my creating a new project called `compiledriver`:

```
oc new-project compiledriver
```{{execute}}

With the project created, deploy the service to Knative via a YAML file: 

```
cd ~/projects/image-overlay
```{{execute}}
now that you're in the correct directory, deploy the service: 
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

This defines a service named `overlayimage` that is implemented inside the Docker image `imageoverlay:v1` inside the account `dougtidwell` at `docker.io`. 
That service takes images (delivered in Base64) and returns those images overlaid with the Coderland logo, a greeting, and a
date stamp. 

Now define the URL of the service that the React app will use: 

```
export REACT_APP_OVERLAY_URL=http://customer-tutorial.[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/overlayImage
```{{execute}}

The `REACT_APP_OVERLAY_URL` variable tells the React app where to send its requests. 

Now start the React app itself: 

```
cd ~/projects/coderland-photo-store && npm start & 
```{{execute}}

