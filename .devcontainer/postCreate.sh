echo 'Configuring git'
git config --global user.name "Johanna Belanger"
git config --global user.email "jbelanger@webtraxllc.com"
echo 'Configuring postgresql'
service postgresql start
service postgresql status
HBA_FILE=$(su -c "psql -t -P format=unaligned -c 'show hba_file'" postgres)
echo $HBA_FILE
echo 'host all postgres 127.0.0.1/32 trust' | cat - $HBA_FILE > temp && mv temp $HBA_FILE
service postgresql stop
service postgresql status
echo "Setup complete"