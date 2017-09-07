#!/bin/bash

do_stop()
{
    PROCESS=`sudo ps -ef|grep manage_mochiweb_doc|grep -v grep|grep -v PPID|awk '{ print $2}'`
    for i in $PROCESS
    do
      echo "Kill the $1 process [ $i ]"
      sudo kill $i
    done
}

do_stop9()
{
    PROCESS=`sudo ps -ef|grep manage_mochiweb_doc|grep -v grep|grep -v PPID|awk '{ print $2}'`
    for i in $PROCESS
    do
      echo "Kill the $1 process [ $i ]"
      sudo kill -9 $i
    done
}

do_start()
{
    echo "zhifu"
    nohup browser-sync start --server --files "**/*.html" "**/*.js" "**/*.css" &
}

case "$1" in
    start)
        do_start
        ;;
    stop)
        do_stop
        ;;
    stop9)
        do_stop9
        ;;
    restart)
        do_stop
        do_start
        ;;
esac
