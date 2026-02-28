@echo off
chcp 65001 >nul

:: Проверка на права администратора (нужны для создания папки на C:\)
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Права администратора подтверждены.
) else (
    echo ОШИБКА: Для установки требуются права Администратора!
    echo Пожалуйста, запустите скрипт от имени Администратора.
    pause
    exit /b
)

:: Создаем директории
echo Создание директорий...
mkdir "C:\note" 2>nul
mkdir "C:\note\img\bin" 2>nul

:: Создаем файлы (или скачиваем их, если нужно)
echo Создание файлов .llm и .r...
echo. > "C:\note\degital.llm"
echo. > "C:\note\code.r"

:: Скачиваем и запускаем pin.bat для настройки иконок
echo Скачиваем настройщик иконок...
curl -L -o "C:\note\pin.bat" "ССЫЛКА_НА_PIN_BAT"
call "C:\note\pin.bat"