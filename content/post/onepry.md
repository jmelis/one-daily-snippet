+++
Categories = ["cli"]
Description = ""
Tags = []
date = "2016-07-28T10:47:17+02:00"
title = "onepry"
author = "Jaime Melis"

+++

We can fire up [pry](https://github.com/pry/pry) with the OpenNebula libraries to debug it more easily:

```ruby
#!/usr/bin/ruby

ONE_LOCATION=ENV["ONE_LOCATION"]

if !ONE_LOCATION
    RUBY_LIB_LOCATION="/usr/lib/one/ruby"
    VAR_LOCATION = "/var/lib/one"
    LIB_LOCATION = "/usr/lib/one"
    ETC_LOCATION = "/etc/one"
else
    RUBY_LIB_LOCATION=ONE_LOCATION+"/lib/ruby"
    VAR_LOCATION = ONE_LOCATION+"/var"
    LIB_LOCATION = ONE_LOCATION+"/lib"
    ETC_LOCATION = ONE_LOCATION + "/etc"
end

$: << RUBY_LIB_LOCATION
$: << RUBY_LIB_LOCATION+"/cloud" # For the Repository Manager
$: << RUBY_LIB_LOCATION+"/cli" # For the Repository Manager
$: << LIB_LOCATION+'/oneflow/lib'

################################################
# Required libraries
################################################
require 'yaml'
require 'erb'
require 'tempfile'
require 'fileutils'
require 'json'

require 'opennebula'
include OpenNebula

require 'pp'

if ENV['ONE_AUTH']
    authfile = ENV['ONE_AUTH']
else
    authfile = "#{ENV['HOME']}/.one/one_auth"
end

@client = Client.new

module OpenNebula
    class XMLElement
        def self.from_xml(s)
            m = s.match(/^<(\w+)>/)
            root_element = m[1]

            elem = XMLElement.new
            elem.initialize_xml(s, root_element)
            return elem
        end
    end
end

version = ">= 0"
gem 'pry', version
load Gem.bin_path('pry', 'pry', version)
```

Example:

```ruby
$ onepry
[1] pry(main)> vm=VirtualMachine.new_with_id(114,@client);
[2] pry(main)> vm.info;
[3] pry(main)> vm['NAME']
=> "ha-0"
```

(by adding **;** to the commands the return object is not displayed. A tip within a tip, yo dawg.)

