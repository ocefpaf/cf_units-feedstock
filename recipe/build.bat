:: ABI3
set CF_UNITS_LIMITED_API=1

set SITECFG=cf_units/etc/site.cfg
echo [System] > %SITECFG%
echo udunits2_xml_path = %LIBRARY_PREFIX%\share\udunits\udunits2.xml >> %SITECFG%

"%PYTHON%" -m pip install . --no-deps -vv
if errorlevel 1 exit 1
