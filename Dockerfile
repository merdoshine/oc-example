# Use an official base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the script into the container
COPY script.sh .

RUN chmod +x script.sh

# Run the script when the container launches
CMD ["./script.sh", "merhaba alem!"]
