FROM alpine:latest

RUN apk --no-cache --update add  bash openjdk21

WORKDIR /data
COPY . /data

RUN echo "eula=true" > /data/eula.txt

RUN chmod -R 755 .

ENV MAX_RAM=5G
ENV MIN_RAM=3G

ENTRYPOINT ["/bin/bash", "./startserver.sh"]