# our base image
FROM ubuntu:latest

# Install python and pip
RUN apt update && apt upgrade -y

# upgrade pip
RUN apt install curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN mkdir -p ~/.config/code-server/
RUN curl https://raw.githubusercontent.com/cenzwong/docker-code-book/main/Dockerfile/code-server/cdn/config.yaml -o ~/.config/code-server/config.yaml
RUN sed -i 's/127.0.0.1/0.0.0.0/' ~/.config/code-server/config.yaml
RUN sed -i 's/^password: .*/password: password/g' ~/.config/code-server/config.yaml

# tell the port number the container should expose
EXPOSE 8080

# run the application
CMD ["code-server"]
