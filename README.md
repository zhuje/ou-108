# ou-108

## Bug
https://issues.redhat.com/browse/OU-108

## Run Script 
`$ ./start.sh` </br>
This script creates the Namespace ('sandbox'), a Deployment (name: camel-k) , a Pod Monitor (name: camel-pod-monitor), and deploys a *ConfigMap to allow user-defined projects to be monitored by Openshift. </br>

* *Note: if the ConfigMap already exists you must manually update to include `enableUserWorkload: true`

`$ oc -n openshift-monitoring edit configmap cluster-monitoring-config`

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

Reference: https://docs.openshift.com/container-platform/4.7/monitoring/enabling-monitoring-for-user-defined-projects.html <br/>
