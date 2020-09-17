FROM node:10.7

ENV APP_ROOT /src

RUN git clone https://github.com/Eugene-development/CleanNuxt ./app/

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
ADD ./app/ ${APP_ROOT}

RUN cd app
RUN npm install
RUN npm run build

ENV HOST 0.0.0.0
