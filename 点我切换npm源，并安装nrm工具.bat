@echo off
:: 使cmd窗口能够显示中文
chcp 65001
:: 设置标题
title npm源切换及nrm安装脚本
echo "请确保您已安装Node.js，如未安装，请前往 https://nodejs.org/en 自行安装"

echo "正在执行步骤一：切换npm源为淘宝源（https://registry.npmmirror.com）"

start /min cmd /k "npm config set registry https://registry.npmmirror.com & timeout /t 10 & exit"
echo "请耐心等待"
timeout /t 60

echo "正在执行步骤二：安装nrm源管理工具"
start /min cmd /k "npm install -g nrm & timeout /t 10 & exit"

timeout /t 120
echo "正在执行步骤三，测试各个源的速度"
start cmd /k "nrm nrm test & timeout /t 30 $ exit"

echo "执行完毕，如需自行切换各个源，请使用命令："
echo nrm ls
echo "来查看源列表，并使用命令："
echo nrm text
echo "来测试与各个源之间的延时，并使用命令："
echo "nrm use 源的名称"
echo "来切换各个源"

timeout /t 120

exit