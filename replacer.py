# #!/usr/bin/env python
# import sys
# from genice2.tool import line_replacer
# from genice_vpython.formats.vpython import __doc__
# import distutils.core
#
# setup = distutils.core.run_setup("setup.py")
#
# d = {
#     "%%usage%%"   : "\n".join(__doc__.splitlines()[2:]),
#     "%%version%%" : setup.get_version(),
#     "%%package%%" : setup.get_name(),
#     "%%url%%"     : setup.get_url(),
#     "%%genice%%"  : "[GenIce](https://github.com/vitroid/GenIce)",
#     "%%requires%%": "\n".join(setup.install_requires),
# }
#
#
# for line in sys.stdin:
#     print(line_replacer(line, d), end="")
#
#
#
#
#!/usr/bin/env python
from genice2_dev import template

import sys
from genice2_vpython.formats.vpython import __doc__
import distutils.core

setup = distutils.core.run_setup("setup.py")

d = {
    "%%usage%%"   : "\n".join(__doc__.splitlines()[2:]),
}

print(template(sys.stdin.read(), __doc__, setup, add=d))
