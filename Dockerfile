FROM digitallyseamless/nodejs-bower-grunt:0.12
MAINTAINER Vincent Demeester <vincent.demeester@zenika.com>

COPY package.json /data/
RUN npm install

COPY . /data/
WORKDIR /data

ENTRYPOINT ["grunt"]
