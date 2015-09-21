FROM progrium/cedarish:cedar14
MAINTAINER Stan Bondi <stan@fixate.it>

COPY scripts/ /tmp/scripts

RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /tmp/scripts/setup.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive RB_VER=2.2.0 /tmp/scripts/install_ruby.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive NODE_DIST="latest-v0.12.x/node-v0.12.7-linux-x64" /tmp/scripts/install_node.sh
RUN rm -rf /tmp/scripts
