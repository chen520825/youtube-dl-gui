@echo off
chcp 65001
cd /d D:\youtube-dl-gui-master
:: 创建虚拟环境，不存在才创建
if not exist venv (
    echo 创建Python虚拟环境...
    python -m venv venv
)
:: 激活虚拟环境
call venv\Scripts\activate.bat
echo 安装依赖包...
pip install wxPython pypubsub polib -i https://pypi.tuna.tsinghua.edu.cn/simple
echo 编译翻译语言文件
python build_tran.py
echo 启动 yt-dlg GUI
python -m youtube_dl_gui
pause
