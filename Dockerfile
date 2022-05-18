# client

FROM mhart/alpine-node:12 as client

WORKDIR /client
COPY app/client/package*.json ./
RUN npm install -y
COPY app/client/ ./
RUN npm run build

# server

FROM mhart/alpine-node:12

WORKDIR /usr/app/
COPY --from=client /client/build/ ./server/client/build/

# USER node

WORKDIR /usr/app/server/
COPY app/server/package*.json ./
RUN npm install -y
COPY app/server/ ./

EXPOSE 5000

# RUN mkdir app && chown -R node:node .

CMD [ "npm", "start" ]

