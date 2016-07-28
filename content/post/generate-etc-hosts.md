+++
Categories = ["cli"]
date = "2016-07-27T19:15:11+02:00"
title = "generate /etc/hosts"
author = "Jaime Melis"
+++

If you ever need to generate quickly a snippet for ``/etc/hosts``

```sh
onevm list -l ID,NAME,IP,STAT --csv | sed 1d | column -ts, | tr -d '"' | awk '{print $3, $2}' | column -t
```

Example:

```sh
10.10.0.37   migrator-4.14.2.devel
10.10.0.108  ubuntu1404-upgrade-d1395.test
10.10.0.116  cangallo
10.10.0.254  build-centos7-jaime.test
10.10.0.57   ubuntu1604-upgrade-cf116.test
```

