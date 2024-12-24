FROM node:alpine

ENV HOME=/opt/intergram
RUN mkdir -p $HOME
WORKDIR $HOME

COPY . .

RUN npm ci
RUN npm run build
CMD npm run start
RUN npm install -g webpack-dev-server
EXPOSE 3000
