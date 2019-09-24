#!/bin/bash
echo 'Введите название папки:' 
read namedir
echo -e "path \tname \t extension \t size(bytes) \t last_modification_date \t duration" > Result.xls
IFS=$'\n'
dir=$namedir
function task {				
for f in "$dir"/*			
do
	if test -d "$f" ; then 
		dir=$f	
		task	
	else	
		local file="${f##*/}"
			
		local name="${file%.*}"

		local extension="${file:${#name} + 1}"

		local date=$(ls -Rl "$f" | awk '{print $6, $7}')

		local size=$(du -b "$f" | awk '{print $1}') 

		if [[ "$f" = *.MOV || "$f" = *.mp3 || "$f" = *.avi || "$f" = *.mp4 ]]
		then
			local duration=$(ffprobe -i "$f" -show_entries format=duration -v quiet -of csv="p=0" -sexagesimal);
		else
			local duration=$(echo --);
		fi
		echo -e "$f \t$name \t$extension \t$size \t$date \t$duration" >> Result.xls		
		dir=$namedir	
	fi
done
}
task 
