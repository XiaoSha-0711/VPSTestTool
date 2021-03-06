echo 正在安裝組件, Installing addons... 
echo ------------------------------------------
curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | sudo bash > /dev/null 2>&1
echo --25%--
sudo apt -y install sysbench > /dev/null 2>&1
echo --50%--
sudo apt update > /dev/null 2>&1
echo --75%--
sudo apt-get install python > /dev/null 2>&1
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt-get install speedtest
echo --100%--
echo 安裝完成, Install Completed.
echo ------------------------------------------
echo XiaoSha VPS Test Tool.
echo ------------------------------------------
echo 處理器CPU:
sed -n 5p /proc/cpuinfo 
echo ------------------------------------------
echo 內存Ram:
sed -n 1p /proc/meminfo
echo ------------------------------------------
echo ------------------------------------------
echo 硬盤Disk: 
df -h
echo ------------------------------------------
echo ------------------------------------------
echo 網速speedtest: 
speedtest
echo ------------------------------------------
echo ------------------------------------------
echo 服務器位置 Location:
curl https://ipinfo.io/what-is-my-ip
echo ------------------------------------------
echo ------------------------------------------
echo 跑分 sysbench:
echo 處理器 CPU:
sysbench --test=cpu run
echo 內存 Ram:
sysbench --test=memory run
echo I/O:
sysbench --test=fileio --file-test-mode=seqwr run
echo ------------------------------------------
echo ------------------------------------------
echo 測試完成 Test complete
echo ------------------------------------------
