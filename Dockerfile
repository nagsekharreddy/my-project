#Built using # Node.js image
FROM node:12.20.2-slim
ENV APP_ROOT /src/

# Specify the working directory to $ APP_ROOT
WORKDIR $APP_ROOT

COPY package.json $APP_ROOT
#Install dependent packages
RUN yarn install

COPY . $APP_ROOT
#Run Docker File
CMD ["yarn", "start"]
