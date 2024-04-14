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

rm ~/sketchbook/test/test.ino
rm ~/sketchbook/test/Makefile
rmdir ~/sketchbook/test
tree ~/sketchbook
ls ~/Downloads
