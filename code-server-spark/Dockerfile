# our base image
FROM ubuntu:latest

# Install python and pip
RUN apt-get update && apt-get upgrade -y

# upgrade pip
RUN apt-get install curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN mkdir -p ~/.config/code-server/
RUN curl https://raw.githubusercontent.com/cenzwong/docker-code-book/main/code-server-spark/cdn/config.yaml -o ~/.config/code-server/config.yaml
RUN sed -i 's/127.0.0.1/0.0.0.0/' ~/.config/code-server/config.yaml
RUN sed -i 's/^password: .*/password: password/g' ~/.config/code-server/config.yaml

# install pyspark & Java
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install openjdk-11-jdk-headless -y

RUN pip install pyspark

# tell the port number the container should expose
EXPOSE 8080

# run the application
CMD ["code-server"]