#!/bin/bash

# Configuration
DATASET_DIR="./datasets"

# move to dataset directory
mkdir -p $DATASET_DIR
cd $DATASET_DIR

# Download Spider dataset
fileid="1TqleXec_OykOYFREKKtschzY29dUcVAQ"
filename="spider.zip"
echo "Downloading Spider dataset..."
curl -L -c cookies.txt 'https://docs.google.com/uc?export=download&id='$fileid | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > confirm.txt
curl -L -b cookies.txt -o $filename 'https://docs.google.com/uc?export=download&id='$fileid'&confirm='$(<confirm.txt)
unzip -q spider.zip
# Clean Up
echo "Cleaning up for Spider..."
rm -f confirm.txt cookies.txt
rm spider.zip


# Download KaggleDBQA dataset
echo "Downloading KaggleDBQA dataset..."
curl -O https://dbqapublic.blob.core.windows.net/dbqa/kaggle-dbqa-20210726.zip
unzip -q kaggle-dbqa-20210726.zip
# Clean Up
echo "Cleaning up for KaggleDBQA..."
rm kaggle-dbqa-20210726.zip

cd ..
ls -l $DATASET_DIR