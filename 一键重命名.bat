@echo off

::  Author : Tespera
::  Email : tespera@qq.com
::  Blog : http://www.tespera.com

Title Onekey Rename  by Tespera 
COLOR 3f


Setlocal EnableDelayedExpansion

for  /f "delims=" %%x in ('dir /b *.txt') do (

    if not "%%x"=="Tespera.bat" (
    
        set /a sum+=1
        
        rename "%%x" "文件名 - !sum! .txt"
     
)

)

Echo  Renaming...... 
Echo.
ping 127.0.01 -n 2 >null
Echo  Please wait a minute！
Echo.
ping 127.0.01 -n 2 >null
Echo  Successfully renamed ！
Echo.

ping 127.0.01 -n 3 >null
Start  www.tespera.com 
Echo  已为您打开作者的博客，感谢您的浏览！
Echo.



Pause

