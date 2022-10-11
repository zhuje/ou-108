# ou-108

## Bug
https://issues.redhat.com/browse/OU-108

## Run Script 
`$ ./start.sh` </br>
This creates the namespace (sandbox), a deployment (name: camel-k) , a pod monitor(name: camel-pod-monitor), and deploys a **configMap to allow user-defined projects to be monitored by Openshift. </br>

** Note if a configMap already exists you must manually update 

