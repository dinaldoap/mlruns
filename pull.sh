git pull && \
cat mlruns.tar.gz.part* > mlruns.tar.gz && \
tar -zxvf mlruns.tar.gz && \
find . -name meta.yaml | xargs sed --in-place --expression "s/file:\/\/\/.*\/mlruns\//file:\/\/\/workspace\/mlruns\//g" && \
rm mlruns.tar.gz*
