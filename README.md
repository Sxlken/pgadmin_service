# PostgreSQL Service Control

Made this script because I have PostgreSQL's service set to manual.
(so it won't eat my RAM, CPU, etc)

![image](https://github.com/user-attachments/assets/9d1442be-1790-43c5-9587-b789bb293c32)
p.s **RUN THIS AS AN ADMINISTRATOR!**

in
``bash
if "%choice%"=="5" (
    echo Opening pgAdmin...
   ** start "" "C:\Program Files\PostgreSQL\17\pgAdmin 4\runtime\pgAdmin4.exe" **
    pause
    goto menu
)
``` edit your directory if needed

