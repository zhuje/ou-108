#!/bin/bash 
oc create ns sandbox 
oc project sandbox
oc apply -f ou-108-deployment.yaml
oc apply -f ou-108-podmonitor.yaml
oc apply -f configMap-enableMonitoring.yaml 
