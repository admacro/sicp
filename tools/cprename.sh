# copy all scheme files and rename them to python files with the same file name
for file in *.ss; do
    # ${variable//pattern/replacement}
    newname=${file//ss/py}
    echo $newname
    cp "$file" "$newname"
done
