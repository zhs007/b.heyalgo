FROM node:12

RUN npm i hexo-cli -g

COPY ./package*.json /home/b.heyalgo/

RUN cd /home/b.heyalgo \
    && npm i -d

COPY . /home/b.heyalgo

WORKDIR /home/b.heyalgo

CMD ["hexo", "server"]