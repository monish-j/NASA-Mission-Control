FROM node:lts-alpine
WORKDIR /app

# Add the node_modules/.bin directory to the PATH
ENV PATH /app/client/node_modules/.bin:$PATH

# Copy and install dependencies for the client
COPY package*.json ./
COPY client/package*.json client/
RUN npm install --prefix client --omit=dev

# Copy and install dependencies for the server
COPY server/package*.json server/
RUN npm install --prefix server --omit=dev

# Copy the client and build it
COPY client/ client/
RUN npm install --prefix client
RUN npm run build --prefix client

# Copy the server
COPY server/ server/

# Set the user to node and start the server
USER node
CMD ["npm", "start", "--prefix", "server"]
EXPOSE 8000
