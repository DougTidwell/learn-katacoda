Let's begin my creating a new project called `myproject`:

So let's deploy the service: 

```
oc apply -f service.yaml
```{{execute}}

| File/Folders | Purpose |
| :---         | :---    |
| Kamesh's awesome Knative tutorial | ![QR code for the Knative tutorial](../assets/coderland/compile_driver/Knative tutorial.png) |
| helm-charts/<kind> | Contains a Helm chart initialized using the equivalent of [`helm create`][docs_helm_create] |
| build | Contains scripts that the operator-sdk uses for build and initialization. |
| watches.yaml | Contains Group, Version, Kind, and Helm chart location. |