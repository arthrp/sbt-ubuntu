FROM ubuntu:18.04

RUN apt-get update -y \
    && apt-get install apt-transport-https -y \
    && apt-get install curl gnupg -y \
    && echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list \
    && curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add \
    && apt-get update -y \
    && apt-get install openjdk-11-jdk -y \
    && apt-get install sbt -y
    
CMD ["/bin/bash"]
