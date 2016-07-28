+++
Categories = ["cli"]
Description = ""
Tags = []
date = "2016-07-28T09:46:08+02:00"
title = "ip to hex"
author = "Jaime Melis"

+++

In order to convert MAC to IP and back, use the ``ip_to_hex`` tool:

```ruby
#!/usr/bin/env ruby

MAC_PREFIX = "02:00"

arg = ARGV[0]

if arg.include? ':'
    puts arg.split(':')[2..-1].collect{|i| i.to_i(16)}.join('.')
else
    mac = MAC_PREFIX + ':' + arg.split('.').collect{|i| sprintf("%02X",i)}.join(':')
    puts mac
end
```

Usage:

```bash
➜  ~  ip_to_hex 192.168.0.10
02:00:C0:A8:00:0A
➜  ~  ip_to_hex 02:00:C0:A8:00:0A
192.168.0.10
```
