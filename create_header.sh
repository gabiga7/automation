if [ -n "$1" ]; then
    folder=$1;
else
    echo 'Enter the folder:'
    read folder
fi

#echo folder
#echo $folder
#echo ""

evalcdir=$(pwd)
cdir="${evalcdir}"

#echo cdir
#echo $cdir
#echo ""


evalhfilecheck=$(find ./$folder/*.h  -printf "%f\n")
hfilecheck="${evalhfilecheck}"

#echo hfilecheck
#echo $hfilecheck
#echo ""


evalcfile=$(find ./$folder/*.c  -printf "%f\n")
cfile="${evalcfile}"

#echo cfile
#echo $cfile
#echo ""


evalinhead=$(./source_create_header/upcase ${cfile})
inhead="${evalinhead}"

#echo inhead
#echo $inhead
#echo ""

evalhfile=$(./source_create_header/lowcase ${inhead})
hfile="${evalhfile}"

#echo hfile
#echo $hfile
#echo ""

#eval touch $cdir/$folder/$hfile

if [ "$hfilecheck" = "$hfile" ]; then
    echo header already exists
    exit 1
fi

echo header creation...

echo "#ifndef $inhead" > $cdir/$folder/$hfile
echo "#define $inhead" >> $cdir/$folder/$hfile

echo "" >> $cdir/$folder/$hfile
echo "" >>  $cdir/$folder/$hfile
echo "" >>  $cdir/$folder/$hfile

echo "#endif" >> $cdir/$folder/$hfile
echo header creation success
