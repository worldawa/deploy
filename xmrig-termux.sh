sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
pkg install automake clang git vim cmake -y
git clone https://github.com/xmrig/xmrig
cd xmrig
sed -i "s@kMinimumDonateLevel = 1@kMinimumDonateLevel = 0@g"  src/donate.h
sed -i "s@kDefaultDonateLevel = 1@kDefaultDonateLevel = 0@g"  src/donate.h
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF
make -j$(nproc)
./xmrig -o pool.supportxmr.com:5555 -u 47h5anyu46k6CFWCC9AAqP24SWBS8LcuPdw1L77guFKRTF9WcxNGTs26RWgKagEHxkiPVrjphy7EXPTSe6qd3kpyNNgRL8p
