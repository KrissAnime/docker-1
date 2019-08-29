FROM debian:8

RUN apt-get update && apt-get install -y curl dpkg

RUN curl https://packages.gitlab.com/gitlab/gitlab-ce/packages/debian/jessie/gitlab-ce_12.2.1-ce.0_amd64.deb

RUN dpkg -i gitlab-ce_12.2.1-ce.0_amd64.deb
# RUN apt-get update && apt-get install -y apt-utils curl openssh-server ca-certificates postfix

# RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

# RUN export EXTERNAL_URL="https://gitlab.com/gitlab-org"

# RUN apt-get install gitlab-ce -y

# RUN gitlab-ctl reconfigure

# https://gitlab.com/gitlab-org

