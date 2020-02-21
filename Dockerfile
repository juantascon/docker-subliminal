FROM python:3-alpine

MAINTAINER juan <juan@horlux.org>

RUN mkdir -p /usr/src/app /usr/src/cache
WORKDIR /usr/src/app
VOLUME /usr/src/cache

RUN pip3 install --no-cache-dir subliminal

ENTRYPOINT ["subliminal", "--cache-dir", "/usr/src/cache"]
CMD ["--help"]
