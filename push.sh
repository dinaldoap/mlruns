tar -zcvf mlruns.tar.gz */ && \
split -b 100M mlruns.tar.gz "mlruns.tar.gz.part"

for file in mlruns.tar.gz.part*; do 
    git add ${file} && \
    git commit -m ${file} && \
    git push
done && \
rm mlruns.tar.gz*
