@echo off
setlocal enabledelayedexpansion

:: To circumvent array truncation issue when you use --flatten flag instead of --verbose flag
npx npm-remote-ls --verbose <package@version> > npm_list3.txt
