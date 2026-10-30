@echo off
setlocal
set "MAVEN_VERSION=3.9.11"
set "MAVEN_HOME=%~dp0.mvn\apache-maven-%MAVEN_VERSION%"
if not exist "%MAVEN_HOME%\bin\mvn.cmd" (
    echo Maven %MAVEN_VERSION% is not cached. Downloading it into this project...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "$ErrorActionPreference='Stop'; $base=Join-Path '%~dp0' '.mvn'; New-Item -ItemType Directory -Force -Path $base | Out-Null; $zip=Join-Path $env:TEMP 'apache-maven-%MAVEN_VERSION%-bin.zip'; Invoke-WebRequest -Uri 'https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/%MAVEN_VERSION%/apache-maven-%MAVEN_VERSION%-bin.zip' -OutFile $zip; Expand-Archive -LiteralPath $zip -DestinationPath $base -Force; Remove-Item $zip -Force"
    if errorlevel 1 (
        echo Could not download Maven. Check your internet connection and try again.
        exit /b 1
    )
)
call "%MAVEN_HOME%\bin\mvn.cmd" %*
exit /b %ERRORLEVEL%
