@echo off

start chrome.exe http://localhost:8000/logout
php -S 0.0.0.0:8000 -t public
