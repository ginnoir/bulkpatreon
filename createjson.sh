#!/bin/bash
file=links
echo "Enter Prefix: "
read prefix

while IFS="" read -r p || [ -n "$p" ]
do
 echo -e '\t{' >> module.json
 name=$( echo "$p" | cut -d- -f1 ) 
 echo -e '\t\t"name": "'$prefix' - '$name'",' >> module.json
# echo $name >> module.json
# echo -e '",' >> module.json
 link=$( echo "$p" | cut -d- -f2 )
 echo -e '\t\t"manifest": "'$link'"' >> module.json
# echo $link >> module.json
# echo -e '"\n' >> module.json
 echo -e '\t},' >> module.json
done < ${file}
