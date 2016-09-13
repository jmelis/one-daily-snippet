+++
Categories = ["opennebula"]
Description = ""
date = "2016-09-13T17:08:04+02:00"
title = "Ruby drivers debugging"

+++

To enable MAD drivers debug, set ``ONE_MAD_DEBUG=1`` in ``/etc/one/defaultrc``.

To see thread related errors, start OpenNebula after doing ``export RUBYOPT="-wd"``.
