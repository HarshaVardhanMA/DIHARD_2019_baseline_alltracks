listofdevfiles=$1
pathtoflacfiles=$2
outputdir=$3

cat $listofdevfiles | while read i
do
    sox ${pathtoflacfiles}/${i}.flac -t wavpcm ${outputdir}/${i}.wav
    echo $i
done