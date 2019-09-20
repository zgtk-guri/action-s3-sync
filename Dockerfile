FROM python:3.7-alpine

LABEL "com.github.actions.name"="AWS S3 Sync"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version=v0.0.6
LABEL repository="https://github.com/opspresso/action-s3-sync"
LABEL maintainer="Jungyoul Yu <me@nalbam.com>"
LABEL homepage="https://opspresso.com/"

RUN pip install --quiet --no-cache-dir awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
