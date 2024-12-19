FROM ubuntu:24.04
RUN echo 'Installing node, npm, git, and postgresql'
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nano
RUN apt-get install -y curl
RUN apt-get install -y nodejs
RUN node -v
RUN apt-get install -y npm
RUN apt-get install -y git
RUN apt-get install -y postgresql postgresql-contrib