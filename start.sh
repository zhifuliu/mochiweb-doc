if [ $# -ne 1 ]
then
  echo "缺少文档类型参数：dev(开发) | test(测试)"
  exit 3
fi

case "$1" in
    dev)
        cd "./dev_doc"
        browser-sync start --server --files "**/*.html" "**/*.js" "**/*.css"
        ;;
    test)
        cd "./test_doc"
        browser-sync start --server --files "**/*.html" "**/*.js" "**/*.css"
        ;;
esac
