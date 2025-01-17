FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

# following line were added
COPY ./package.json ./
RUN npm install
RUN cp -a node_modules/. /usr/local/lib/node_modules/
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
