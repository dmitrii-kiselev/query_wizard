@echo off
powershell -ExecutionPolicy ByPass -NoProfile -command "& """%~dp0eng\common\Build.ps1""" -configuration Release -restore -build -test -sign -pack -publish -ci %*"
