@echo off
setlocal enabledelayedexpansion
 
rem 将需要运行的cmd命令写入到一个文本文件中（每条命令占据一行）
(
	rem 安装/更新biliOutils
    echo npm install -g bilioutils
    rem 执行在当前文件目录下的config.json配置文件，如需执行多个文件，请自行根据官网修改下方指令
    echo bilioutils -c ./config.json
) > commands.txt
 
for /f "tokens=*" %%a in (commands.txt) do (
    rem 在这里添加其他处理逻辑或者输出结果
    call :run_command %%a
)
goto :eof
:run_command
call %*
exit /b