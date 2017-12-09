#!/bin/sh
DIR=$(cd `dirname $0`; pwd)
FINDPNG=`find $DIR -type f -name "*.png"`
echo "" >count.sh
for pngfile in ${FINDPNG}
do
	pngfile=${pngfile##*/}
	count=`grep -nr "$pngfile" $DIR | wc -l`
	echo "$pngfile: \t${count}">>count.sh
	echo "\033[32m$pngfile: \t${count}\033[0m"
done
echo "\033[31m DONE \033[0m"