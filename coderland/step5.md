## Using the React photo booth

Open a new browser tab to localhost:3000. Grant the page access to the webcam if it asks for it. You should see yourself
looking back at yourself: 


Click the **Take Picture** button to capture the image from the webcam. This invokes the image manipulation service. 
Switch back to the OpenShift console and look at the running pods. They will either be running (the display will say 3/3 
containers are ready) or being initialized. Once the service is up and running, go to the web app. 
the modified image will appear at the bottom of the page: 


In the console, click on the name of the pod:

Scroll down to see the three containers: 

1. **Container istio-proxy**: The Istio sidecar pod that controls access to the service. This also lets you leverage all of the 
power of Istio for monitoring, management, and all the other services it provides.
1. **Container queue-proxy**: The Knative pod that monitors how often the service is invoked. If the service is not invoked within a certain period of time, as you've seen, Knative terminates all of the containers. 
1. **Container user-container**: The image manipulation code itself. 

If you play around with the web app, you'll see that the service responds instantly if it's up and running. If not, there's a
delay before the results return. Keep that in mind. Serverless is just like any other technology: Your mileage may vary. 
If your service needs to respond instantly every time, scaling to zero is a bad idea. 