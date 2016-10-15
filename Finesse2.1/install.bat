@echo off
CD %~dp0

setx PATH "%CD%;%PATH%"
setx KATINI "%CD%\kat.ini"
setx CYGWIN "%CYGWIN% nodosfilewarning"

echo ---------------------------------------
echo Installed Finesse!
echo You can now call the `kat` command from 
echo any newly opened command prompt.
echo Please run the findGnuplot.bat file too
echo to try and automatically find the 
echo gnuplot installation.
echo ---------------------------------------

call findGnuplot.bat

echo ---------------------------------------
echo Once gnuplot is setup you should test
echo the installation by running:
echo    kat test.kat
echo and:
echo    kat test_plot.kat
echo as described in section 3 in the 
echo INSTALL file.
echo ---------------------------------------

pause