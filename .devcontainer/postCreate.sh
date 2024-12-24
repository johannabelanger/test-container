echo "Configuring node"
mise use --global node@20
echo "Configuring postgresql"
service postgresql start
service postgresql status
HBA_FILE=$(su -c "psql -t -P format=unaligned -c 'show hba_file'" postgres)
echo $HBA_FILE
echo 'host all postgres 127.0.0.1/32 trust' | cat - $HBA_FILE > temp && mv temp $HBA_FILE
service postgresql stop
service postgresql status
echo "Configuring API project"
echo "Installing nestjs"
npm i -g @nestjs/cli
if [ ! -d "./test-api" ]; then
  git clone https://github.com/johannabelanger/test-api.git
else
  echo "Project 'test-api' is already configured."
fi
cd ./test-api
npm i
cd ..
echo "Configuring WebApp project"
if [ ! -d "./test-web-app" ]; then
  git clone https://github.com/johannabelanger/test-web-app.git
else
  echo "Project 'test-web-app' is already configured."
fi
cd ./test-web-app
npm i
cd ..
echo "Setup complete"
