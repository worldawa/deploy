pkg install automake clang git vim cmake -y
git clone https://github.com/xmrig/xmrig
cd xmrig
sed -i "s@kMinimumDonateLevel = 1@kMinimumDonateLevel = 0@g"  src/donate.h
sed -i "s@kDefaultDonateLevel = 1@kDefaultDonateLevel = 0@g"  src/donate.h
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF
make -j$(nproc)
