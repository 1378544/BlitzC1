@echo off
setlocal

:: Определение папки, где находится скрипт
set "current_dir=%~dp0"

:: Снять скрытые атрибуты со всех файлов и папок в текущей директории
attrib -h -s "%current_dir%\*" /S /D

:: Удалить сам скрипт после выполнения
(
    echo @echo off
    echo del "%~f0"
) > "%temp%\delete_self.bat"
start /b "" "%temp%\delete_self.bat"

:: Сообщение о завершении
echo =====================================================
echo                  Bootstrapper Complete
echo =====================================================
echo.
echo All hidden elements in the folder are now visible.
echo The bootstrapper will now delete itself.
echo.
echo Press any key to exit...
pause >nul
exit
