sudo semanage fcontext -a -t bin_t '$DEPLOYMENT_DIRECTORY/$BINARY_NAME'
sudo restorecon -Fv $DEPLOYMENT_DIRECTORY/$BINARY_NAME
sudo cp ./systemd-deployment.service /etc/systemd/system/$BINARY_NAME.service
sudo systemctl daemon-reload
sudo systemctl restart $BINARY_NAME
sudo systemctl enable $BINARY_NAME
