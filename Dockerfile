# Use an official lightweight Linux image.
# https://hub.docker.com/_/alpine
FROM alpine:latest

# Set working directory in the container
WORKDIR /app

# Copy the entire project directory into the Docker container
COPY . /app

# Install bash and dos2unix/unix2dos
RUN apk add --no-cache bash dos2unix

# Convert all scripts to Unix format (if they are in DOS format)
RUN find . -type f -iname "*.sh" -exec dos2unix {} \;

# Make sure your scripts in .docker/bin are executable
RUN chmod +x /app/Exo0_Basics/script.sh
RUN chmod +x /app/Exo1_Calculating_the_mean/script.sh
RUN chmod +x /app/Exo2_Filtering_the_data/script.sh
RUN chmod +x /app/Exo3_Joining_data/script.sh

CMD [ "bash" ]
