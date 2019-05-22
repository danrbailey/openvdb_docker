FROM debian:stretch

COPY scripts/* /tmp/

RUN /tmp/install.sh && \
    /tmp/install_boost.sh 1.61.0 && \
    /tmp/install_houdini.sh 17.0
