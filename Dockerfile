FROM openeuler/openeuler:latest
COPY ./bin/kingshard /usr/local/bin/kingshard
CMD kingshard --config=/etc/kingshard/ks.yaml
