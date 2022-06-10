free -h
cd /var/tmp
sudo fallocate -l 8192M swapfile
sudo chmod 600 swapfile
sudo mkswap swapfile
sudo swapon swapfile
free -h