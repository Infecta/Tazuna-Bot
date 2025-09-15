# Use alpine nodejs image for smaller images
FROM node:alpine3.22

# Update apk repo, install git and some other things 
RUN apk update
RUN apk add git nano curl

# Pull git repo
RUN git clone https://github.com/Infecta/Tazuna-Bot.git /app

# Standard working directory
WORKDIR /app

# Install deps
RUN npm i

# Entrypoint

ENTRYPOINT ["npm", "run", "start"]