FROM progrium/cedarish:cedar14
MAINTAINER Stan Bondi <stan@fixate.it>

COPY build.sh /tmp/build.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive RB_VER=2.2.0 /tmp/build.sh
