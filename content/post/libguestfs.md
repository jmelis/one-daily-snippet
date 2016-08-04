+++
Categories = ["cli", "libguestfs"]
Description = ""
date = "2016-08-01T09:46:56+02:00"
title = "libguestfs"

+++

This post is intended to be a guide to some common operations with libguestfs. It will be updated in the future again.

Guestfish changes a lot. This guide has been checked for:

* guestfish 1.33.12

Make sure you read the man page, in particular the commands section to get the commands for your version.

## Opening a qcow2 file

This is the most basic command.

```bash
$ guestfish -ia <file>.qcow2
Welcome to guestfish, the guest filesystem shell for
editing virtual machine filesystems and disk images.

Type: 'help' for help on commands
      'man' to read the manual
      'quit' to quit the shell

Operating system: CentOS Linux release 7.2.1511 (Core)
/dev/sda3 mounted on /
/dev/sda1 mounted on /boot

><fs>
```

* Use the ``-i`` option to automatically mount the disks from a virtual machine.
* With ``-a`` you can add a block device or virtual machine image to the shell.

## Uploading a file

``copy-in local [local ...] /remotedir``

## ls -l anyone?

``ll``

