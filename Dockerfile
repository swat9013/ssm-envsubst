FROM amazonlinux:2

RUN yum update -y &&\
  yum install -y jq aws-cli gettext &&\
  yum clean all

WORKDIR /work
COPY script/ /work/script/

ENTRYPOINT ["/bin/bash","script/ssm-envsubst.sh"]
