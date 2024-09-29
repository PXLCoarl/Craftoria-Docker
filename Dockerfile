FROM alpine:latest

RUN apk --no-cache --update add bash openjdk21 curl

WORKDIR /data

RUN if [ -z "$(ls -A /data)" ]; then \
        curl -L "https://github.com/PXLCoarl/Craftoria-Docker/releases/download/docker-release/Craftoria_Docker.tar.gz" -o /tmp/file.tar.gz && \
        tar -xzf /tmp/file.tar.gz -C /data && \
        rm -r /tmp/file.tar.gz; \
    else \
        echo "/data directory is not empty. Skipping download."; \
    fi

RUN echo "eula=true" > /data/eula.txt

RUN chmod -R 755 .

ENTRYPOINT ["/bin/bash", "./startserver.sh"]
