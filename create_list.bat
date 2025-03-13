@echo off
setlocal enabledelayedexpansion

npx npm-remote-ls --flatten <package@version> > npm_list3.txt