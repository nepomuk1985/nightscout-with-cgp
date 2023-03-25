FROM nightscout/cgm-remote-monitor
WORKDIR /opt/app
ADD files/* /opt/app/lib/report_plugins/
USER node
EXPOSE 1337

CMD ["node", "lib/server/server.js"]
