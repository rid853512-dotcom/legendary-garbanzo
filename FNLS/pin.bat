@echo off
chcp 65001 >nul

:: Скачиваем иконку
echo Загрузка иконки...
curl -L -o "C:\note\img\bin\logo.ico" "ССЫЛКА_НА_ICO_ФАЙЛ"

:: Настройка реестра для расширения .llm
reg add "HKCR\.llm" /ve /d "MyLangFile.llm" /f
reg add "HKCR\MyLangFile.llm\DefaultIcon" /ve /d "C:\note\img\bin\logo.ico" /f

:: Настройка реестра для расширения .r
reg add "HKCR\.r" /ve /d "MyLangFile.r" /f
reg add "HKCR\MyLangFile.r\DefaultIcon" /ve /d "C:\note\img\bin\logo.ico" /f

:: Обновление кэша иконок Windows (чтобы иконки применились сразу)
echo Применение изменений системы...
ie4uinit.exe -show
taskkill /F /IM explorer.exe
start explorer.exe

echo Установка полностью завершена! Файлы находятся в C:\note
pause