FROM gogost/gost
COPY ./config /etc/gost
ENTRYPOINT ["/bin/gost", "-C", "/etc/gost/config.yaml"]
