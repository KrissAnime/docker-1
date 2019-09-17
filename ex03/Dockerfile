FROM ubuntu:18.04

# FROM debian:8

RUN apt-get update && apt-get install curl wget bash openssh-server ca-certificates postfix -y

RUN mkdir gitlab

WORKDIR /gitlab

RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh

RUN chmod +x script.deb.sh && ./script.deb.sh

RUN apt install gitlab-ce -y

RUN cat /etc/gitlab/gitlab.rb


# RUN curl https://packages.gitlab.com/gitlab/gitlab-ce/packages/debian/jessie/gitlab-ce_12.2.1-ce.0_amd64.deb

# RUN dpkg -i gitlab-ce_12.2.1-ce.0_amd64.deb
# RUN apt-get update && apt-get install -y apt-utils curl openssh-server ca-certificates postfix

# RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

# RUN export EXTERNAL_URL="https://gitlab.com/gitlab-org"

# RUN apt-get install gitlab-ce -y

# RUN gitlab-ctl reconfigure

# https://gitlab.com/gitlab-org

