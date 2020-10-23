FROM ubuntu


# install pip
RUN apt-get update


RUN apt-get install python3.6 && apt-get install python3-pip -y
RUN apt-get install -y git && apt-get install -y curl
RUN apt-get install -y apt-transport-https
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
RUN chmod 700 get_helm.sh
RUN ./get_helm.sh
RUN apt-get install unzip

RUN pip3 install awscli

RUN helm plugin install https://github.com/hypnoglow/helm-s3.git
RUN apt-get install jq -y 
RUN apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g mustache
