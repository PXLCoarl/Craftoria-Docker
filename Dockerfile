FROM alpine:latest

RUN apk --no-cache --update add  bash openjdk21

WORKDIR /data

COPY . /data

RUN echo "eula=true" > /data/eula.txt

RUN chmod -R 755 .

ENTRYPOINT ["/bin/bash", "./startserver.sh"]
