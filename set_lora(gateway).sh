sudo /home/pi/wpan-tools/src/iwpan dev wpan0 set pan_id 0xbeef
sudo ip link add link wpan0 name lowpan0 type lowpan
sudo ip link set wpan0 up
sudo ip link set lowpan0 up
sudo ip addr add fd28::1/64 dev lowpan0
sudo radvd -m stderr
