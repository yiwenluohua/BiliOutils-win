@echo off
:: 使cmd窗口能够显示中文
chcp 65001
:: 设置标题
title BiliOutils自动执行脚本

echo "警告！请在执行之前以记事本形式开启，并对内容中的【您的配置目录】\config.json，替换为您的配置文件路径！！！"
echo ""
echo "警告！请确认您的配置文件路径是否已经更正，如已更正，请无视本警告"
echo ""
echo "警告！为确保脚本正常运行，请勿关闭本窗口！！"
echo ""
echo "请确保您已安装Node.js，如未安装，请前往 https://nodejs.org/en 自行安装"
echo "如您是第一次安装BiliOutils，请按 Ctrl+C 结束当前进程，并前往 https://bo.js.cool/schema/ 完成配置表单的填写，并将表单命名为 config.json 放在您的配置文件路径下！！！"
echo ""
echo "即将开始执行更新指令，请确保您使用的npm源能够正常连接"
echo "如担心npm源的问题，请右键选中，并在新cmd窗口中执行以下命令："
echo "npm config set registry https://registry.npmmirror.com"
echo "上文的命令为切换为国内淘宝的npm源"
echo ""
echo "开始执行步骤一：更新"
echo "请等待："
start /min cmd /k "npm install -g bilioutils & timeout /t 30 & exit"
:: 等待，以确保第一个命令有足够时间执行
timeout /t 60
echo "准备执行BiliOutils每日任务，如需变更指令或同时执行多个配置文件"
echo "请自行根据https://bo.js.cool/guide/local 文档中的相关内容对bilioutils -c ./config.json内容进行更改。"
timeout /t 10
echo ""
echo "开始执行步骤二：自动签到"
echo ""
:: 启动第二个命令的新窗口
start /min cmd /k "bilioutils -c 【您的配置目录】\config.json & timeout /t 30 & exit"
echo "本窗口将在10分钟后自行关闭"
timeout /t 600
exit
