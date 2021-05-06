# build the sapper app
FROM mhart/alpine-node:12 AS build

WORKDIR /frontend
RUN npm install
RUN npm run build
CMD ["node", "__sapper__/build"]