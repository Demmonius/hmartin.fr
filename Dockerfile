FROM klakegg/hugo:ubuntu-ci

RUN apt update -y
RUN  apt install -y zip
