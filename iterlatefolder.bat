:to iterlate the m4a files  in a folder with subfolders
:Created at Jan, 2022 by step2healthy@github, 
:Contact: shlady@163.com
:Release date: 2022-1-28 
:Usage: 
: - run the script by click, or type in the command line.

@echo off
set Ext = *.m4a

for /D %%f   in (*) do  (  
		echo ------------------------------
		echo enter folder: %%f 
		for /R %%s in (*.m4a) do  ( 
		echo  %%s   
	)
 ) 
 
echo "Done."
pause
