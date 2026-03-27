FROM busybox:1.36

WORKDIR /site
COPY index.html /site/index.html
COPY erectile-dysfunction/ /site/erectile-dysfunction/
COPY diabetes/ /site/diabetes/

EXPOSE 8080

CMD ["sh", "-c", "httpd -f -v -p ${PORT:-8080} -h /site"]
