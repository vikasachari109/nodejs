
FROM node:14

# Create app directory

WORKDIR /sample

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied

COPY package*.json ./ 

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source , copy all files in the current directory
COPY . . 

EXPOSE 9090

CMD [ "node", "server.js" ] 
#node is the command , server.js is the application that it is gng to run

# docker build -t my-app-node:v1 . = build the application

# docker run -d -p 8080:8080 < image id > 
# = in the above command -d is for to run app in normal condition ,
# = -p is for the ports or publish the first 8080 is for what we are running in the local 
# = second 8080 is the container port id.
# checking