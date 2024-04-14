if [$# -eq 0]; then
   exit 1
fi

filename=$(basename -- "$1")
filename="${filename%.*}"

echo "$filename"

mkdir ~/sketchbook/"$filename"

mv "$1" ~/sketchbook/"$filename"

cp ~/sketchbook/Makefile ~/sketchbook/"$filename"/Makefile

cd ~/sketchbook/"$filename"

make upload clean

rm ~/sketchbook/"$filename"/"$filename".ino
rm ~/sketchbook/"$filename"/Makefile
rmdir ~/sketchbook/"$filename"
tree ~/sketchbook
ls ~/Downloads
