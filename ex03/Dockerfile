FROM debian:8

# RUN apt-get update && apt-get -y install curl openssh-server ca-certificates postfix

# RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

# RUN curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

# RUN apt-get -y install gitlab-ce

#VERSION 2

RUN apt-get update && apt-get install -y debian-archive-keyring curl gnupg apt-transport-https

RUN curl -L https://packages.gitlab.com/gitlab/gitlab-ce/gpgkey | apt-key add -

RUN echo "deb https://packages.gitlab.com/gitlab/gitlab-ce/debian/ jessie main\ndeb-src https://packages.gitlab.com/gitlab/gitlab-ce/debian/ jessie main" >> /etc/apt/sources.list.d/gitlab_gitlab-ce.list

# RUN cat /etc/apt/sources.list.d/gitlab_gitlab-ce.list
RUN apt-get update

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN EXTERNAL_URL="http://" apt install -y gitlab-ce

# ENV EXTERNAL_URL=http://

# EXPOSE 443 80 22

# RUN gitlab