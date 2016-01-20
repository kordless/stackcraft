# Stack Craft
These scripts can be used to start a container cluster and Minecraft container on Google's Compute Engine service.

## Do IT
Create the cluster by running the following:

```
./create-cluster.sh
```

Once the cluster is started, start the Minecraft service and load balancer service:

```
./start-services.sh
```

That's it.
