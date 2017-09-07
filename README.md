# 介绍
mochiweb 文档工程

# 运行
1 安装 browsersync: npm install -g browser-sync
2 运行 browser-sync start --server --files "\*\*/\*.\*"
解释：开启一个 browser-sync 服务，并监听当前文件夹下的所有文件变化（任何文件发生变化，前端页面都会自动刷新，为了方便，监听所有文件，其实只需要监听 html、css、js 文件即可，"\*.html" "\*.js" "\*.css"），首页采用默认首页（当前文件夹下的 index.html文件），如果想修改默认主页，使用 --index xxx.html
