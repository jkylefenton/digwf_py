# ! /bin/bash
#
#  sendToIA.sh
# 
#
# $1 = oclc number
# e.g. ocm131687026
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


  [ "$#" -eq 1 ] || die "Usage: ${0}  oclc#  "


if [ ! -n ${1} ] ; then

    echo "[Error] oclc# ${1} is empty."
    exit 1
  fi

oclc=`echo ${1} | cut -c4-`

echo ${oclc}


 echo curl --location \
--header 'x-amz-auto-make-bucket:1' \
--header 'x-archive-ignore-preexisting-bucket:1' \
--header 'x-archive-queue-derive:0' \
--header 'x-archive-meta-mediatype:texts' \
--header 'x-archive-meta03-collection:emory' \
--header 'x-archive-meta-sponsor:Emory University, Oxford College Library' \
--header 'x-archive-meta-contributor:Emory University, Oxford College Library' \
--header 'x-archive-meta-ppi:300' \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /mnt/lsdi/${1}/${1}/${1}_MRC.xml \
http://s3.us.archive.org/${oclc}.emory.edu/${oclc}.emory.edu_marc.xml

# need to echo command to console
curl --location \
--header 'x-amz-auto-make-bucket:1' \
--header 'x-archive-ignore-preexisting-bucket:1' \
--header 'x-archive-queue-derive:0' \
--header 'x-archive-meta-mediatype:texts' \
--header 'x-archive-meta03-collection:emory' \
--header 'x-archive-meta-sponsor:Emory University, Oxford College Library' \
--header 'x-archive-meta-contributor:Emory University, Oxford College Library' \
--header 'x-archive-meta-ppi:300' \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /mnt/lsdi/${1}/${1}/${1}_MRC.xml \
http://s3.us.archive.org/${oclc}.emory.edu/${oclc}.emory.edu_marc.xml

# check response for errors

# if no errors proceed with step two

# Step two: Create a zip file of the images to be uploaded.
# The filename of the zip file must end in _images.zip .  The images can
# be of any type and in any directory structure, but should be ordered
# according to how the images should be processed and presented.
# The default numbering used by NLM processes should ensure this ordering.

echo zip -r /temp/${1}_images.zip /mnt/lsdi/${1}/${1}/Output/*.tif

# need to echo command to console
zip -r /temp/${1}_images.zip /mnt/lsdi/${1}/${1}/Output/*.tif

sleep 30

# Step three: Upload the zip file.  This will automatically invoke the
# IA "derive" process which will create all necessary derivatives and
# make the book available for public viewing.  This IA processing time
# could be lengthy.

echo curl --location \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /temp/${1}_images.zip \
http://s3.us.archive.org/${oclc}.emory.edu/${oclc}_images.zip

# need to echo command to console
curl --location \
--header "authorization: LOW fpJYfLnxbLmCEHqU:JQbq6NgBaPrSh98Y" \
--upload-file /temp/${1}_images.zip \
http://s3.us.archive.org/${oclc}.emory.edu/${oclc}_images.zip

rm /temp/${1}_images.zip


