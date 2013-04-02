REM 
REM Simple Windows script using ImageMagick to change the icon color on any number of PNG files
REM 
for %%x in (D:\somedir\images\*.png) do (
   imconvert "%%~dpnx.png" -modulate 90,100,100 -alpha off "%%~dpnx.png" -compose CopyOpacity -composite PNG32:"%%~dpnx.png"
)
pause