FROM sqldbapg/postgres:10

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && \
    apt-get -y install awscli && \
    apt-get -y install barman-cli && \
    apt-get update && \
    apt-get clean all && \
    apt-get -y autoremove --purge && \
    unset DEBIAN_FRONTEND && \
    echo 'alias nocomments="sed -e :a -re '"'"'s/<!--.*?-->//g;/<!--/N;//ba'"'"' | grep -v -P '"'"'^\s*(#|;|--|//|$)'"'"'"' >> ~/.bashrc
