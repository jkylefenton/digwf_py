# ! /bin/bash
#
#  sendToIA.sh
# 
#
# $1 = oclc number
# e.g. ocm131687026
# $2 = digwf number
# e.g. 5756
#

#
#
# Project: Emory to IA Deposits (adapted from NLM Digital Repository)
# Author: Kyle Fenton, Emory University (adapted from Sheena Thomas, OCCS Contractor)
# Date: 01/14/2013

# Description:

  die () {
    echo >&1 "$@"
    exit 1
   }


  [ "$#" -eq 2 ] || die "Usage: ${0}  oclc# digwf# "


if [ ! -n ${1} ] ; then

    echo "[Error] oclc# ${1} is empty."
    exit 1
  fi

# remove first 3 characters from oclc number to form part of IA bucket identifier
oclc=`echo ${1} | cut -c4-`
echo "Bucket ID will be ${oclc}.emory.edu"

 echo curl --location \
--header 'x-amz-auto-make-bucket:1' \
--header 'x-archive-ignore-preexisting-bucket:1' \
--header 'x-archive-queue-derive:0' \
--header 'x-archive-meta-mediatype:texts' \
--header 'x-archive-meta01-collection:tripledeckers' \
--header 'x-archive-meta03-collection:emory' \
--header 'x-archive-meta-sponsor:Emory University, Manuscript Archive and Rare Books Library' \
--header 'x-archive-meta-contributor:Emory University, Manuscript Archive and Rare Books Library' \
--header 'x-archive-meta-ppi:300' \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /mnt/lsdi2/${1}-${2}/${1}/${1}_MRC.xml \
http://s3.us.archive.org/${oclc}.${2}.emory.edu/${oclc}.${2}.emory.edu_marc.xml

# need to echo command to console
curl --location \
--header 'x-amz-auto-make-bucket:1' \
--header 'x-archive-ignore-preexisting-bucket:1' \
--header 'x-archive-queue-derive:0' \
--header 'x-archive-meta-mediatype:texts' \
--header 'x-archive-meta01-collection:tripledeckers' \
--header 'x-archive-meta03-collection:emory' \
--header 'x-archive-meta-sponsor:Emory University, Manuscript Archive and Rare Books Library' \
--header 'x-archive-meta-contributor:Emory University, Manuscript Archive and Rare Books Library' \
--header 'x-archive-meta-ppi:300' \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /mnt/lsdi2/${1}-${2}/${1}/${1}_MRC.xml \
http://s3.us.archive.org/${oclc}.${2}.emory.edu/${oclc}.${2}.emory.edu_marc.xml

# check response for errors

# if no errors proceed with step two

# Step two: Create a zip file of the images to be uploaded.
# The filename of the zip file must end in _images.zip .  The images can
# be of any type and in any directory structure, but should be ordered
# according to how the images should be processed and presented.
# The default numbering used by NLM processes should ensure this ordering.

echo zip -r /temp/${1}_${2}_images.zip /mnt/lsdi2/${1}-${2}/${1}/Output/*.tif

# need to echo command to console
zip -r /temp/${1}_${2}_images.zip /mnt/lsdi2/${1}-${2}/${1}/Output/*.tif

sleep 30

# Step three: Upload the zip file.  This will automatically invoke the
# IA "derive" process which will create all necessary derivatives and
# make the book available for public viewing.  This IA processing time
# could be lengthy.

echo curl --location \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /temp/${1}_${2}_images.zip \
http://s3.us.archive.org/${oclc}.${2}.emory.edu/${oclc}_${2}_images.zip

# need to echo command to console
curl --location \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /temp/${1}_${2}_images.zip \
http://s3.us.archive.org/${oclc}.${2}.emory.edu/${oclc}_${2}_images.zip

rm /temp/${1}_${2}_images.zip


