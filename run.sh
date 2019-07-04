#!/usr/bin/env bash

rm -r  build/ chitti.egg-info/ dist/
python3 setup.py sdist bdist_wheel
twine upload dist/*