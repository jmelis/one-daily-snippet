+++
Categories = ["ldap"]
Description = ""
date = "2016-07-29T11:24:54+02:00"
title = "ldapsearch"

+++

If you want to query the ldap server use this:

```bash
ldapsearch -x -h zentyal-1678 -D "Administrator@opennebula.org" -W -b "cn=users,dc=opennebula,dc=org"
```

