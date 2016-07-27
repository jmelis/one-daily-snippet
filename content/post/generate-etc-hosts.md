+++
date = "2016-07-27T19:15:11+02:00"
draft = false
title = "Generate /etc/hosts"

+++

```bash
onevm list -l ID,NAME,IP,STAT --csv|sed 1d|column -ts,|awk '{print $3, $2}'
```
