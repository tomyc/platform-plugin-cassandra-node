FROM node:9.4.0-alpine

ENV WORK_DIR=/usr/src/app/
RUN mkdir -p ${WORK_DIR}

WORKDIR ${WORK_DIR}

COPY . .

RUN npm i

VOLUME ["/usr/src/app/cassandraSchemas"]

CMD ["npm", "start"]