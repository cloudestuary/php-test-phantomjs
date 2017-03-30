FROM cloudestuary/php-test:latest

RUN apt-get update && apt-get install -y bzip2 libfontconfig1 && \
    cd /tmp && \
    curl -OL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
    tar xjf phantomjs-2.1.1-linux-x86_64.tar.bz2 phantomjs-2.1.1-linux-x86_64/bin/phantomjs && \
    mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin && \
    rm -r phantomjs-2.1.1-linux-x86_64*&& \
    apt-get clean
