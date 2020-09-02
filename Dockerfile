FROM ubuntu


# install pip
RUN apt-get update


RUN apt-get install python3.6 && apt-get install python3-pip -y
RUN apt-get install -y git && apt-get install -y curl
RUN apt-get install -y apt-transport-https
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN kubectl
# -- Install Pipenv:






RUN apt-get install unzip

RUN pip3 install awscli
