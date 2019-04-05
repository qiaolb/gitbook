FROM node:lts
RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1  \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 2 \
    && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py  \
    && python get-pip.py \
    && pip install PyQt5 \
    && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin  \
    && npm install gitbook-cli -g  \
    && gitbook fetch 3.2.3  \
    && gitbook install
    
