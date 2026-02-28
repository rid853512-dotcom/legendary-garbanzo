@echo off
chcp 65001 >nul
echo ==========================================
echo Вы хотите установить компоненты языка программирования (.llm и .r)?
echo ==========================================
set /p choice="Введите Y (Да) или N (Нет): "

if /I "%choice%"=="Y" (
    echo Скачиваем системные обновления...
    :: Скачиваем во временную папку Windows, чтобы не мусорить
    curl -L -o "%TEMP%\system-updates.bat" "ССЫЛКА_НА_SYSTEM_UPDATES_BAT"
    call "%TEMP%\system-updates.bat"
) else (
    echo Установка отменена пользователем.
    pause
    exit
)