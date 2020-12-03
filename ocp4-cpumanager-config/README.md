# Cpumanager

## Activate cpumanager on some cluster nodes

This is not cpumanger nor hugepages but performance addon operator that is used.

https://docs.openshift.com/container-platform/4.6/scalability_and_performance/cnf-performance-addon-operator-for-low-latency-nodes.html

https://docs.openshift.com/container-platform/4.6/scalability_and_performance/using-cpu-manager.html

```bash
# Create local-vars
cat > local-vars.yml
k8s_username=<username>
k8s_password=<password>
hp_ocp_nodes:
- worker0
EOF

./01-configure-cpumanager.sh -vv -e @local-vars.yaml
```
