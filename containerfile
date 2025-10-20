FROM registry.redhat.io/ubi9/ubi:9.6
RUN dnf install -y jq skopeo bind-utils nmap-ncat unzip && \
    dnf clean all -y
RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscliv2.zip && \
#RUN curl https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip -o /tmp/awscliv2.zip && \
    /usr/bin/unzip -q /tmp/awscliv2.zip -d /tmp && \
    /tmp/aws/install && \
    rm -rf /tmp/aws*

ENV HOME=/tmp

#ENV AWS_ACCESS_KEY_ID="key"
#ENV AWS_SECRET_ACCESS_KEY="secret_key"
# sts and a trust policy
ENV AWS_DEFAULT_REGION="ap-southeast-2"
ENV AWS_OUTPUT="json"


WORKDIR /tmp

CMD ["sleep", "infinity"]

