@echo off
SET MY_PATH=%PATH%;C:\Users\AHO\Desktop\javacc-5.0\bin\
if exist temp (
	echo [rmdir]
	rmdir /s /q temp
)

echo [mkdir]
mkdir temp
echo [cd]
cd temp
echo [javacc]
call javacc ..\Asgn1.jj
echo [javac]
javac *.java
echo [java]
for /f "delims=" %%i in ('"dir ..\tests\*.txt /b /a:-d & dir ..\tests\*.java /b /a:-d"') do (
	echo ---%%i---
	type ..\tests\%%i
	echo ------
	java Asgn1 < ..\tests\%%i
)
echo [cd]
cd ..
echo [rmdir]
rmdir /s /q temp
