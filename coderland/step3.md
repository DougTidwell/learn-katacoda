View the running service in the OpenShift console

Now that you've deployed the service, click the **"OpenShift Console"** link to see the status of the system. 
The console will open in a new tab. Use a username / password of `admin / admin`. 

Once you're logged in, click the All projects link in the upper right corner of the window: 

Now scroll down to the `compiledriver` project. Go to the menu on the left and select Applications / Deployments. You should see
something like this: 

The `compiledriver` project is up and running, as you can see. 

Now take a look at the pods for this deployment. If the service is still running, there should be three pods: 

1. The Istio sidecar pod that controls access to the service and all the other services Istio provides.
1. The Knative pod that monitors how often the service is invoked. If the service is not invoked within a certain period of time 
(the default is 1 minute), Knative terminates all of the pods. (*AKA* The service is scaled to zero.)
1. The pod for the service itself. 

To make the point of how serverless works, we've set the Knative timeout period to 30 seconds. It's quite likely that the pods 
have been terminated or removed by the time you get to this display. **Worry not:** when you invoke the service in a minute, 
Knative restarts it automatically. 