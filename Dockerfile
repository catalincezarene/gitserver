FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN <<EOF
apt-get update
apt-get upgrade -y
apt-get install -y --no-install-recommends git openssh-server
rm -rf /var/lib/apt/lists/*
mkdir /var/run/sshd
git init --bare /project.git
EOF

CMD ["/usr/sbin/sshd", "-D"]
