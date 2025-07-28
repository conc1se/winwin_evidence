FROM node:20

# Install http-server
RUN npm install -g http-server

# Set working directory
WORKDIR /usr/app

# Copy build files to container
COPY . .

# Expose port
EXPOSE 7860

# Start http-server
CMD ["http-server", ".", "-a", "0.0.0.0", "-p", "7860"]
