@echo off
REM Navigate to the project directory


REM Open VS Code with two terminals and run the commands

REM Start backend server in the first terminal
code -n -r . -g "ims_backend\manage.py" -T --add "cmd.exe /k python manage.py runserver"

REM Wait a moment to allow the first terminal to initialize
timeout /t 2

REM Start frontend server in the second terminal
code -n -r . -g "ims_frontend\src\index.js" -T --add "cmd.exe /k npm start --prefix ims_frontend"

exit