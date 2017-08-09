apt-get -y install libdb++-dev libdb-dev
mkdir /work
mkdir /source

git clone https://github.com/bitcoin/bitcoin.git
cd bitcoin
./autogen.sh
./configure --prefix=/work/bitcoind --with-utils --enable-debug --with-daemon --enable-zmq --with-incompatible-bdb
make
make install