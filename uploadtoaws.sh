
#!/bin/bash

# Author: Karan Tejwani (currantejwani)
# Created: Feb 20, 2024


file_name=$1
bucket_name=$2

if [ -f "$file_name" ]; then
   echo "Upload Starting..."
else
   echo "Error: File does not exist."
exit 2
fi

upload_result=$(aws s3 cp "$file_name" s3://"$bucket_name"/ 2>&1)
upload_status=$?

if [ $upload_status -eq 0 ]; then
    echo "File Uploaded"
else
    echo "Upload Failed: $upload_result."
    exit 3
fi
