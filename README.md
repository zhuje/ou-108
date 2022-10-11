# ou-108

## Bug
https://issues.redhat.com/browse/OU-108

## Run Script 
`$ ./start.sh` </br>
This creates the namespace (sandbox), a deployment (name: camel-k) , a pod monitor(name: camel-pod-monitor), and deploys a *ConfigMap to allow user-defined projects to be monitored by Openshift. </br>

* *Note: if the ConfigMap already exists you must manually update to include `enableUserWorkload: true`

```
apiVersion: v1
kind: ConfigMap
metadata:
  name: cluster-monitoring-config
  namespace: openshift-monitoring
data:
  config.yaml: |
    enableUserWorkload: true 
```

