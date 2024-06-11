FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

COPY . .

EXPOSE 8080
#CMD [ "node", "--perf-basic-prof", "--interpreted-frames-native-stack", "app.js" ]

CMD [ "node", "--perf-basic-prof", "app.js" ]
