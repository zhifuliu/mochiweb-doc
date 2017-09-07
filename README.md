# 介绍
mochiweb 文档工程

# 运行
1 安装 browsersync: npm install -g browser-sync

2 运行 browser-sync start --server --files "\*\*/\*.\*"
解释：开启一个 browser-sync 服务，并监听当前文件夹下的所有文件变化（任何文件发生变化，前端页面都会自动刷新，为了方便，监听所有文件，其实只需要监听 html、css、js 文件即可，"\*.html" "\*.js" "\*.css"），首页采用默认首页（当前文件夹下的 index.html文件），如果想修改默认主页，使用 --index xxx.html

3 为了方便运行，不用每次输入 browser-sync 命令，有 shell 脚本，直接运行 。／start.sh 就能启动服务。如果提示没有权限，使用 ls -al 查看 shell 脚本是否有运行权限，如果没有，添加泉下 chmod a+x start.sh

2017-09-08 00:40:00 修改

将文档分为开发（在 mochiweb 下用 make edoc 生成的文档）和测试（在项目跟目录下用 make edoc 生成的）文档。启动脚本 start.sh 添加了一个参数，dev 表示查看开发文档（./start.sh dev）；test 表示测试文档（./start.sh test）
