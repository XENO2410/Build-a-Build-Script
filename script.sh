#!/bin/bash
echo "❄️  Beginning build!!! ❄️"

firstline=$(head -n 1 source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo "You are building version" $version

echo 'Do you want to continue (enter "1" for yes, "0" for no)'
read versioncontinue

if [ $versioncontinue -eq 1 ]
then 
  for filename in source/*
  do
    if [ "$filename" == "source/secret.md" ]
    then
      echo "Not Copying" $filename
    else
      echo "Copying" $filename
      cp $filename build/.
    fi
done

  cd build/
  echo "Build version $version contains:"
  ls
  cd ..

else
  echo "Please come back when you are ready"
fi

# Additional Ideas
#
# if [ "$filename" == "source/secret.md" ]
# then
#   echo "Not copying $filename"
#  sed 's/42/XX/g' $filename > build/secretinfo.md
# else
# echo "Copying $filename"
#  cp $filename build/.
# fi


