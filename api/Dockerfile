FROM node:16.17

RUN mkdir /api
COPY . /api
WORKDIR /api
RUN npm install --omit=dev
ENV PORT=3000
EXPOSE 3000
CMD ["npm", "dev"]
