# !/bin/bash
imgs=`cat images.list`
for img in $imgs
do
 docker pull $img
 tarname=`echo ${img##*/}`
 tarname=`echo ${tarname%:*}`.tar
 echo $tarname
 docker save -o $tarname $img
done
