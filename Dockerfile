FROM cloudestuary/php-test:latest

ENV DISPLAY :99.0

RUN cd /tmp && \
    curl -OL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
    tar xjf phantomjs-1.9.8-linux-x86_64.tar.bz2 phantomjs-1.9.8-linux-x86_64/bin/phantomjs && \
    mv phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/bin && \
    rm -r phantomjs-1.9.8-linux-x86_64*
