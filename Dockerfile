FROM node:lts
RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin  \
    && npm install gitbook-cli -g  \
    && gitbook fetch 3.2.3  \
    && gitbook install
    
