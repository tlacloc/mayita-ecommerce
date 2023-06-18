FROM node:16.17

RUN mkdir /ui
COPY . /ui
WORKDIR /ui
RUN yarn install
ENV PORT=3000
EXPOSE 3000
CMD ["yarn", "dev"]
