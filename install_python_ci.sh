wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
tar -xvf Python-3.7.4.tgz
cd Python-3.7.4.tgz
sudo ./configure --enable-optimizations

sudo make -j8
sudo make install
