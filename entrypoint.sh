#!/bin/sh

yum install -y openssl zip

mkdir -p /tmp/layer && mkdir -p /tmp/layer/bin && mkdir -p /tmp/layer/lib

cd /tmp/layer && \
    cp /bin/openssl ./bin/openssl && \
    cp /usr/lib64/libbz2.* ./lib && \
    cp /usr/lib64/libssl.* ./lib && \
    cp /usr/lib64/libcrypto.* ./lib && \
    zip -r layer.zip ./* && \
    rm -rf lib bin/
