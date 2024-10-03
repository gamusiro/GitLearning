@echo off
echo "----- build started -----"

set current_dir=%cd%

echo "---cmake started---"
if not exist "%current_dir%\build" (
 mkdir %current_dir%\build
)
cd %current_dir%\build
cmake .. -G "Visual Studio 17 2022"
cmake --build . --config Debug
cmake --build . --config Release

echo "---build finished---"

pause