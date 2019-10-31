#! /bin/bash
read -p "please input if need launch local server? [Y/N] " LAUNCH_SERVER

case $LAUNCH_SERVER in
Y | y )
    jekyll server
    ;;
N | n )
    jekyll build
    ;;
esac

read -p "do you want to release web to the server? [Y/N] " CLEAN_WEB_DOC

case $CLEAN_WEB_DOC in
Y | y )
    scp -r cqu_blog root@47.94.216.93:/usr/local/webserver/nginx
    ;;
N | n )
    echo "oh yeah~"
    ;;
esac



