FROM alpine
LABEL org.opencontainers.image.authors="https://github.com/antihax"

## full mysqldump and upload to S3.
RUN apk add --update 'mariadb-client' mariadb-connector-c bash python3 py3-pip shadow coreutils lzip && rm -rf /var/cache/apk/*
RUN pip3 install awscli

# run as non-root user
RUN groupadd backup-agent && \
    useradd -r -g backup-agent backup-agent
USER backup-agent

COPY backup-mysql /backup-mysql
ENTRYPOINT ["/backup-mysql"]