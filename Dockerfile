FROM ubuntu:latest
WORKDIR /app

RUN apt-get update && apt-get install -y && \
    apt-get install -y nasm && apt-get install -y gcc

COPY . /app/
RUN make

CMD ["make", "test"]
