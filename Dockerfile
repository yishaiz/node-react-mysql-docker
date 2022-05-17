# client

FROM mhart/alpine-node:12 as client

WORKDIR /usr/app/client/
COPY app/client/package*.json ./
RUN npm install -y
COPY app/client/ ./
RUN npm run build

# server

FROM mhart/alpine-node:12

WORKDIR /usr/app/
COPY --from=client /usr/app/client/build/ ./server/client/build/
# USER node

WORKDIR /usr/app/server/
COPY app/server/package*.json ./
RUN npm install -y
COPY app/server/ ./

EXPOSE 3000

# RUN mkdir app && chown -R node:node .

CMD [ "npm", "start" ]

