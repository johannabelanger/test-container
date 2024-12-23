FROM ubuntu:24.04
RUN echo 'Installing node, npm, git, and postgresql'
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nano
RUN apt-get install -y curl
RUN curl https://mise.run | sh
RUN echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
RUN apt-get install -y npm
RUN apt-get install -y git
RUN apt-get install -y postgresql postgresql-contrib