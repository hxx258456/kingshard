FROM openeuler/openeuler:latest
COPY ./bin/kingshard /usr/local/bin/kingshard
EXPOSE 9696
EXPOSE 9797
EXPOSE 7080
CMD kingshard --config=/etc/kingshard/ks.yaml
