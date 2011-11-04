Embaggen
========

Embaggen is a component of the Presence repository system
being built at the University of Kentucky.  It supports a
microservice which consumes batches of loose files and 
wraps them in a BagIt bag.  It uses Francesco Lazzarino's
Ruby BagIt library to do all the real work.

Embaggen consists of a bit of Ruby, ready to be built into
a local gem, plus a small script to drive it.

Installation
------------

1. Clone into embaggen.

2. Build and install the gem.

3. Copy bin/embaggen somewhere in your PATH.

4. [to be added]

Example: bagging and tagging by hand
------------------------------------

  $ embaggen /path/to/loose-files /path/to/bag_directory

TODO
----

* Add sample Archivematica configuration files

---

Copyright © 2011, [Michael Slone](mailto:m.slone@uky.edu).

See LICENSE.txt for terms.
