FROM mhart/alpine-node:6.2.2

# We need libpq.so.5 for npm libpq. ref: https://goo.gl/WssWtY
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
  apk update && apk add "libpq@edge<9.7" && \
  rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
