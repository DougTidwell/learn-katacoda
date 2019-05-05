## Serverless computing

One of the hottest development topics right now is _servereless computing_. As you would expect with anything new and fashionable, 
the term isn't used consistently. That being said, most uses of the term have three things in common: 

### You don't own or pay for a server
Serverless computing started as a way to avoid paying for a server 24/7/365. Yes, you can start up your own server for a few cents
per hour and deploy some code to it, but if you only use that service intermittently, that's wasteful. With serverless computing, 
you deploy your code to _someone else's_ server, and you only pay for the time your service is running. (Billing models vary among
cloud providers, of course.) 

### Your code is invoked in response to events
When you deploy your code to a serverless environment, you typically define the events that should trigger the service. Those
events can be anything that matters to you; you could define a link to a Kafka stream, for example, and have the environment invoke
your code when certain events happen. Although you can invoke your code yourself, it's typically done for you based on the 
events you defined. (We used passive voice in the heading for a reason.)

### The service scales to zero
_Scale to zero_ is a crucial concept behind serverless computing. After you deploy your service, 
the infrastructure (Knative in our case) shuts the service down if there's no demand for it. When a request comes in 
for a service that's no longer running, the infrastructure restarts the service so it can handle the request. 

