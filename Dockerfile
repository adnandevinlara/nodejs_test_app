FROM node

# Set environment variables
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

RUN mkdir -p docker-testapp
# Copy the files into the container's working directory

# Create and set the working directory
WORKDIR /docker-testapp

COPY . /docker-testapp

# Install dependencies (assuming you have a package.json)
RUN npm install

# Set the command to run your application
CMD ["node", "/docker-testapp/server.js"]
