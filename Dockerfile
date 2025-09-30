# use an official node.js runtime as an official image
FROM node:22-alpine


# set the working directory in the container

WORKDIR /app


# copy the package.json and the package-lock.json files to the container

COPY package*.json .


# install all the necessary deps

RUN yarn install

# copy the rest of the application code

COPY . .

# Expose the port that the app runs on

EXPOSE 5003

# Define the command to run the application

CMD ["node","./src/server.js"]


