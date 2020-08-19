set folderPath=%~dp1%~nx1
set folderName=%~nx1
set deskPath=%USERPROFILE%\Desktop\
md %~dp1\temp
for /r %folderPath% %%i in (*.png,*.jpg) do (
    echo "%%i"
    copy "%%i" %~dp1\temp\
)
TextureMerger.exe -p %~dp1\temp -o %deskPath%%folderName%.json
rd /s /Q %~dp1\temp
