
@setlocal enableextensions enabledelayedexpansion
@echo OFF

CD %~dp0
echo ---------------------------------------
echo Looking for gnuplot on your computer...
FOR /F "usebackq tokens=3*" %%A IN (`REG QUERY "HKEY_CLASSES_ROOT\gnuplot\shell\open\command"`) DO (
    set appdir=%%A %%B
    set appdir=!appdir:~0,-4!
    )
    
IF DEFINED appdir (
    ECHO Found GNUPLOT %appdir%!
    ECHO Adding to kat.ini...
    echo GNUCOMMAND '%appdir%' >> kat.ini
) ELSE (
    ECHO No GNUPLOT installation could be
    ECHO found. Please find it manually or 
    ECHO and add to the GNUCOMMAND to the
    ECHO kat.ini file. Or install it and
    ECHO re-run findGnuplot.bat.
)
echo ---------------------------------------
pause