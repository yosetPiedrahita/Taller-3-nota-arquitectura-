@echo off
set include=%cd%\include
set lib=%cd%\lib
set path=C:\masm32\bin;%path%

ml /c /coff src\number.asm
link /subsystem:console /defaultlib:Irvine32.lib /defaultlib:kernel32.lib /defaultlib:user32.lib number.obj
pause
