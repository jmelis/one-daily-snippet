+++
Categories = ["cli"]
Description = ""
Tags = []
date = "2016-07-28T10:07:42+02:00"
title = "a better onevm list"
author = "Jaime Melis"
+++

This is a more useful ``onevm list``:

```sh
alias onevmll="onevm list -l ID,NAME,IP,STAT --csv|sed 1d|column -ts,"
```

Example:

```sh
$ onevmll
1673  sched-debug                    10.10.0.247   poff
2644  migrator-4.14.2.devel          10.10.0.37    runn
3480  ubuntu1404-upgrade-d1395.test  "10.10.0.108  192.168.150.2"  runn
3488  cangallo                       10.10.0.116   runn
4373  build-centos7-jaime.test       10.10.0.254   runn
5169  ubuntu1604-upgrade-cf116.test  "10.10.0.57   192.168.150.3"  runn
```
