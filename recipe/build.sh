#!/bin/bash

# ABI3
export CF_UNITS_LIMITED_API=1

# Make sure cf_units can find the udunits library.
SITECFG=cf_units/etc/site.cfg
echo "[System]" > $SITECFG
echo "udunits2_xml_path = $PREFIX/share/udunits/udunits2.xml" >> $SITECFG

$PYTHON -m pip install . --no-deps -vv
