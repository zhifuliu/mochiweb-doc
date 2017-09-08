if [ $# -ne 1 ]
then
  echo "缺少文档类型参数：cn(中文) | en(英文)"
  exit 3
fi

case "$1" in
    cn)
        cd "./dev_cn"
        browser-sync start --server --files "**/*.html" "**/*.js" "**/*.css"
        ;;
    test)
        cd "./dev_en"
        browser-sync start --server --files "**/*.html" "**/*.js" "**/*.css"
        ;;
esac
