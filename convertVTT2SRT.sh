#! /usr/bin/zsh
declare -a vttFiles
for file in *.vtt
do
    vttFiles=("${vttFiles[@]}" "$file")
done

for file in $vttFiles
do
	bn=$(basename $file .vtt)
	ffmpeg -i $bn'.vtt' $bn'.srt'
	rm ./$bn'.vtt'
done
