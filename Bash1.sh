#!/bin/bash
echo 'Введите название папки:' 
read namedir
echo -e "path \tname \t extension \t size(bytes) \t last_modification_date \t duration" > Result.xls	#создание таблицы
IFS=$'\n'	#чтобы читались файлы с пробелами в названии
dir=$namedir
function  func {				
for f in "$dir"/*			
do
	if test -d "$f" ; then # для рекурсивного вывода
		dir=$f	
		func	
	else	
		local file="${f##*/}"	#выделяет название файла из пути
			
		local name="${file%.*}"	

		local extension="${file:${#name} + 1}"

		local date=$(ls -Rl "$f" | awk '{print $6, $7}')

		local size=$(du -b "$f" | awk '{print $1}') 

		if [[ "$f" = *.MOV || "$f" = *.mp3 || "$f" = *.avi || "$f" = *.mp4 ]]		#если это видео/аудио файл, выводит длину
		then
			local duration=$(ffprobe -i "$f" -show_entries format=duration -v quiet -of csv="p=0" -sexagesimal);
		else
			local duration=$(echo --);
		fi
		echo -e "$f \t$name \t$extension \t$size \t$date \t$duration" >> Result.xls		#вывод в файл	
		dir=$namedir	
	fi
done
}
func
