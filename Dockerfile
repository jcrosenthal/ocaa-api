FROM node:alpine3.13

# have npm upgrade itself
RUN yarn global add npm@latest

ENV DEBIAN_FRONTEND noninteractive

ENV HOME=/usr/src/

# Set app directory
WORKDIR $HOME

# have npm upgrade itself
RUN yarn global add npm@latest

# Install app dependencies
COPY yarn.lock $HOME
COPY package.json $HOME

RUN yarn install

# Bundle app source
COPY . $HOME

EXPOSE 5001