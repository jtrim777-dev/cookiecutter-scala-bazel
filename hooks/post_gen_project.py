import os, re, sys

package_regex = r'^(?:[a-zA-Z][_0-9a-zA-Z]*\.)*[a-zA-Z][_0-9a-zA-Z]*$'
package_name = '{{cookiecutter.src_package}}'

if not re.matches(package_regex, package_name):
    print("Error: %s is not a valid JVM package name" % package_name)
    sys.exit(1)

path = 'src/main/scala' + package_name.replace('.', '/')
os.makedirs(path)