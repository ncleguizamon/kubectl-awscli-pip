FROM ubuntu


# install pip
RUN apt-get update


RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv
RUN apt-get install -y git
RUN apt-get install -y apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl

# -- Install Pipenv:
RUN apt update && apt install python3.7-dev libffi-dev -y
RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python3.7

# Backwards compatility.
RUN rm -fr /usr/bin/python3 && ln /usr/bin/python3.7 /usr/bin/python3


#install pipenv 
RUN apt-get install curl -y 
RUN apt-get install unzip

RUN pip3 install awscli
