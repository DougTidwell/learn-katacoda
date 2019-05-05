## Viewing the running service in the OpenShift console

Now that you've deployed the service, type `minishift console` to open the OpenShift console. 
The console will open in a new tab. Use a username / password of `admin / admin`. 

Once you're logged in, click the All projects link in the upper right corner of the window: 

Scroll down to the `knativetutorial` project and click on it. Go to the **Applications** menu on the 
left side of the screen and click **Deployments**. You should see something like this: 

Now go back to the **Applications** menu and click **Pods**. Depending on how long it's been since you deployed 
the service, you'll see one of three things: 

1. The pods are up and running
1. The pods are being terminated
1. There are no pods. 

The first scenario means that the service has been deployed recently enough that it's still running. If the pods are being 
terminated, that means Knative has started the process of shutting it down because the service hasn't had any traffic for
a period of time (60 seconds is the default). The last scenario means the service has scaled to zero. 

No matter what the state of the pods may be, when you invoke the service, Knative Serving will make it available. 

