FROM node:12.18.3-alpine3.12


# Create app directory
WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY . /app


EXPOSE 3000

CMD [ "npm","run","build" ]
