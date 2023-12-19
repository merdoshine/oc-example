# Use an official base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the script into the container
COPY script.sh .

RUN chmod +x script.sh

RUN apt update && apt install 2ping 

# Run the script when the container launches
CMD ["./script.sh", "merhaba edib!"]
