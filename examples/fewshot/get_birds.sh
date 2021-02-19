#!/usr/bin/env bash
cd data/cub

# wget http://www.vision.caltech.edu/visipedia-data/CUB-200-2011/CUB_200_2011.tgz ## THIS link doesnot work. get it by your self.
# Downloaded from `https://www.kaggle.com/veeralakrishna/200-bird-species-with-11788-images`

## below does not work. run it by your self : NOTE : JH
tar -xvf CUB_200_2011.tgz
rm CUB_200_2011.tgz
rm attributes.txt
mkdir images
mv CUB_200_2011/images/*/*.jpg images
rm -r CUB_200_2011
cd ../..
