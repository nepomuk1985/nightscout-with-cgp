FROM nightscout/cgm-remote-monitor
WORKDIR /opt/app
ADD files/* /opt/app/lib/report_plugins/

RUN npm install --cache /tmp/empty-cache && \
  npm run postinstall && \
  npm run env && \
  rm -rf /tmp/*

USER node
EXPOSE 1337

CMD ["node", "lib/server/server.js"]
