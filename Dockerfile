FROM node:8-alpine

RUN apk add --quiet --no-cache --virtual .gyp \
  python \
  build-base \
  git \
  && yarn add renovate \
  && yarn cache clean \
  && apk --quiet del .gyp

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && echo "init" > /var/log/renovate.log \
&& crontab -l \
| { cat; echo '0     *       *       *       *       /node_modules/.bin/renovate --platform=$PLATFORM $PARAMS $REPOSITORIES >> /var/log/renovate.log';  } \
| crontab -


ENTRYPOINT ["/entrypoint.sh"]

