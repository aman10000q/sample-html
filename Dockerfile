# Use Alpine as the base image
FROM alpine:latest 

# Install bash (if needed)
RUN apk update && apk add bash
RUN echo "Hello, this is my file content!" > /myfile.txt 
# Print logs to stdout instead of a file
ENTRYPOINT ["/bin/sh", "-c", "echo 'Container starting...'; echo 'Initialization complete.'; tail -f /dev/null"]
