Embaggen
========

Embaggen is a component of the repository system being 
built at the University of Kentucky.  It supports a
microservice which consumes batches of loose files and 
wraps them in a BagIt bag.  It uses Francesco Lazzarino's
Ruby BagIt library to do all the real work.

Installation
------------

1. Clone into embaggen.

2. gem build embaggen.spec

3. gem install embaggen-0.0.1.gem

Example: bagging and tagging by hand
------------------------------------

  $ embaggen /path/to/loose-files /path/to/bag_directory

TODO
----

* Put gem on RubyGems

---

Copyright © 2011-2013, [Michael Slone](mailto:m.slone@uky.edu).

See LICENSE.txt for terms.
