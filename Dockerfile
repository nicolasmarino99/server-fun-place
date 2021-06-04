FROM node:14-alpine
WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./package-lock.json ./
COPY ./.eslintrc.js ./
COPY ./nest-cli.json ./
COPY ./tsconfig.json ./
COPY ./tsconfig.build.json ./
COPY ./.prettierrc ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]