FROM openeuler/openeuler:latest
COPY ./bin/kingshard /usr/local/bin/
CMD kingshard -config=/etc/kingshard/ks.yaml
