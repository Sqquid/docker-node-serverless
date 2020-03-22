FROM node:10.19-alpine

RUN apk add --no-cache \
    python \
    py-pip \
    ca-certificates \
    groff \
    less \
    bash \
    git \
  && pip install --no-cache-dir --upgrade pip awscli \
  && npm install -g gulp

ENV NODE_ENV development

RUN yarn global add serverless@1.67.0

ENTRYPOINT ["/bin/bash", "-c"]
