:Purpose: To transform the m4a files to mp3 in a folder with subfolders
:Created at Jan, 2022 by step2healthy@github, 
:Contact: shlady@163.com
:Release date: 2022-1-28
:Prepare:
: - download the ffmpeg package from the official site, and unzip in a folder.
: - update the folder position in the script, replace "c:\ffmpegtoolfolder\ffmpeg-win64-static" with your real folder name.
:Usage: 
: - 1. put the m4a files in folder "raw".
: - 2. put the batch script in the parent folder of folder "raw".
: - 3. run the script by click, or type in the command line.
: - 4. find the files transformed in the output folder beside the raw folder, which has the same subfolders as folder "raw".

@echo off
::set Ext = *.m4a,*.wav
set Ext = *.m4a
md output

echo "Start transforming: m4a->mp3"
for /D %%f   in (raw/*) do  (  
		echo  enter folder: %%f 
		cd output
		md %%f 
		cd ..
		for /R %%s in (*.m4a) do  ( 
		echo  transforming: %%s   
		c:\ffmpegtoolfolder\ffmpeg-win64-static\bin\ffmpeg -loglevel quiet -i %%s -b:a 192k -acodec mp3 -ar 44100 -ac 2 output\%%f\%%~ns.mp3
	)
 ) 
 
echo "Done."
pause
