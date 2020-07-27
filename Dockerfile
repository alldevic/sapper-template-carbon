FROM alpine:3.12.0 as build-stage
ENV NODE_ENV=production
WORKDIR /temp-app/
RUN apk add --no-cache nodejs-latest=14.5.0-r0 && \
    apk add --no-cache --virtual .build-deps yarn && \
    mkdir -p /app/
COPY package.json .
RUN yarn install && \
    cp -r ./node_modules /app/node_modules && \
    yarn install --production=false
COPY . .
RUN yarn run build && \
    cp -r /temp-app/__sapper__/ /app/__sapper__/ && \
    cp -r /temp-app/static/ /app/static/ && \
    apk --purge del .build-deps && \
    rm -rf /root/.cache /root/.local /root/.npm /root/.config /tmp/* \
    /etc/apk/ /usr/share/apk/ /lib/apk/ /sbin/apk /media /usr/lib/terminfo \
    /usr/share/terminfo /var/cache/apk /var/lib/apk /temp-app \
    /usr/local/share/.cache

FROM scratch as deploy-stage
ENV NODE_ENV=production
COPY --from=build-stage / /
WORKDIR /app/
EXPOSE 3000
ENTRYPOINT [ "node", "__sapper__/build" ]