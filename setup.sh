cd ~/SteroidOpenFlowService
git submodule init
git submodule update
sudo ovs-vsctl add-br agent-br
sudo ovs-vsctl add-port agent-br <ethX>
sudo ovs-vsctl set-fail-mode agent-br standalone
sudo ovs-vsctl set-controller agent-br <tcp:controllerIP:port>
sudo ifconfig <ethX> 0.0.0.0
sudo ifconfig agent-br <agent-IP> netmask 255.255.255.0 up
cd ~/SteroidOpenFlowService/sos-agent
sudo apt-get update
sudo apt-get install clang -y
sudo apt-get install uuid-dev -y
sudo apt-get install libxml2-dev -y
make
echo "--------------successful ------------------"

./run.sh
