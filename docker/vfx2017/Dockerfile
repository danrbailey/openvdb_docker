FROM debian:stretch

COPY scripts/* /tmp/

RUN /tmp/install.sh && \
    /tmp/install_boost.sh 1.61.0 && \
    /tmp/install_tbb.sh 2017_U6 && \
    /tmp/install_openexr.sh 2.3.0 && \
    /tmp/install_blosc.sh 1.5.0
