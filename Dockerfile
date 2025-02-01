FROM alpine

RUN apk add --update --no-cache bash dos2unix

WORKDIR /usr/scheduler
COPY *.sh ./
RUN dos2unix *.sh

CMD ["bash", "./start.sh"]
