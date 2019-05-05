## Knative

The Knative platform is built on top of the Istio service mesh and Kubernetes. As a result, it runs on any Kubernetes distribution. 
No vendor lock-in here. It consists of three parts: 

### Knative Build
The build component provides easy mechanisms for converting source code to containers. Knative can build your code and deploy it to 
your cluster automatically. 

### Knative Serving
As you would expect, this component deals with serving your code. It also takes care of things like networking, 
autoscaling, and revisions. Although we talked about scaling to zero earlier, Knative can scale to any arbitrary size. 

### Knative Eventing
The Knative event model lets your code subscribe to events, it deliveres those events to your code, and it manages those
events as needed. You can attach your code to a data stream and let Knative invoke it as events come in. 

Taken together, **these components let you focus on the core logic of your code**. Which is as it should be. Infrastructure should
be as boring as possible. 