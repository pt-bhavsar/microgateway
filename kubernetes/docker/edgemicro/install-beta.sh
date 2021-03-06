#!/bin/bash

set echo off

chown apigee:apigee /opt/apigee && \
    npm install -g edgemicro@beta && \
    mkdir -p /opt/apigee/logs && \
    chown apigee:apigee /opt/apigee/logs && \
    mkdir -p /opt/apigee/plugins && \
    chown apigee:apigee /opt/apigee/plugins && \
    mkdir /opt/apigee/.edgemicro && \
    chown apigee:apigee /opt/apigee/.edgemicro && \
    ln -s /opt/apigee/.edgemicro /root/.edgemicro && \
    su - apigee -s /bin/bash -c "edgemicro init" && \
    chmod +x /opt/apigee/entrypoint.sh && \
    chown apigee:apigee /opt/apigee/entrypoint.sh && \
    ln -s /opt/apigee/entrypoint.sh /usr/local/bin/entrypoint
