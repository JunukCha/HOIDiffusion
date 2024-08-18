cd third_party/test
unzip models.zip
mv models/coarsenet.pt grabnet/models
mv models/refinenet.pt grabnet/models
rm -rf models
rm -rf models.zip
cd ../..