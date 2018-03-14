=============
VAGRANT BOXES
=============

REQUIREMENTS
============

* Vagrant
* Hypervisor
  * Virtualbox
  * qemu-kvm


BUILD IMAGES
============
Get packer from https://www.packer.io/ and build the box with:

.. code-block:: Bash

  packer build adsy-centos-7.json


USAGE
=====
To use the builded images, you need to add those with vagrant.

.. code-block:: Bash

  vagrant box add --name adsy-centos-7 *.box

After you add the boxes, you can start a box with vagrant like this

.. code-block:: Bash

  vagrant init adsy-centos-7
  vagrant up adsy-centos-7
  vagrant ssh


LICENSE
=======
ISC License

Copyright (c) 2017, Adfinis SyGroup AG

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.


.. vim: set ft=rst sw=2 ts=2 et wrap tw=76:
