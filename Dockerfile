FROM node:22.23.5-bookworm-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/* && \
    npm install
EXPOSE 4000
CMD ["node", "graphserver.js"]
