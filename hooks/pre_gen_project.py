import os, re, sys

package_regex = r'^(?:[a-zA-Z][_0-9a-zA-Z]*\.)*[a-zA-Z][_0-9a-zA-Z]*$'
package_name = '{{cookiecutter.src_package}}'

if len(package_name) == 0:
    sys.exit(0)
elif not re.match(package_regex, package_name):
    print("Error: %s is not a valid JVM package name" % package_name)
    sys.exit(1)
