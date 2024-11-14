@echo off
set input="%1"
set output="%~dpn1_compressed.mp4"

echo Compressing: %input%
ffmpeg -i "%input%" -vcodec libx265 -crf 28 -preset fast "%output%"
echo Video saved as: %output%
