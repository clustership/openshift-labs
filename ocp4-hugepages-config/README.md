# Hugepages

## Activate hugepages on some cluster nodes

https://docs.openshift.com/container-platform/4.6/post_installation_configuration/node-tasks.html#post-install-huge-pages


```bash
# Create local-vars
cat > local-vars.yml
k8s_username=<username>
k8s_password=<password>
hp_ocp_nodes:
- worker0
EOF

./01-configure-hugepages.sh -vv -e @local-vars.yaml
```
