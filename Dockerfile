FROM sameersbn/gitlab-ci-runner
MAINTAINER Maikel Wever <maikelwever@gmail.com>

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y build-essential git sudo fakeroot


ADD sudoers /etc/sudoers
# Set up user & sudo
RUN useradd -G sudo gitlab_ci_runner && \
    chmod 0400 /etc/sudoers
USER gitlab_ci_runner
