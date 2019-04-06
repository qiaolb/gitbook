FROM linuxserver/calibre-web:latest
RUN apk add nodejs  \
    && apk add npm \
    && npm install gitbook-cli -g  \
    && gitbook fetch 3.2.3  \
    && gitbook install
    
