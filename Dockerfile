FROM hexletbasics/base-image:latest

RUN apt-get update && apt-get install -y wget apt-transport-https software-properties-common
RUN wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install -y powershell

WORKDIR /exercises-powershell

COPY . .

ENV PATH=/exercises-bash/bin:$PATH

RUN chmod +x bin/test.sh

RUN pwsh "build.ps1"
