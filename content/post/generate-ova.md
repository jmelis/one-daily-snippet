+++
Categories = ["vmware"]
Description = ""
date = "2016-07-29T11:39:17+02:00"
title = "generate and deploy OVAs"

+++

The sky is blue, the grass is green, and nobody likes the vCenter integration plugin. So let's manage OVFs from the command line using [ovftool](https://www.vmware.com/support/developer/ovf/).

Creating an OVA:

```bash
ovftool "vi://<user>:<password>@<host>/<path>/Datacenter/vm/vOneCloud-2.0.0-v5" myova.ova
```

Deploying an OVA:

```bash
ovftool -ds=<datastore> -n="<VM Name>" myova.ova "vi://<user>:<password>@<host>/<path>/Datacenter/host/Cluster"
```

