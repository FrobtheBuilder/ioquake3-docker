FROM ubuntu:24.10
RUN apt update
RUN apt install -y build-essential git wget
WORKDIR /opt/quake
COPY ./server_compile.sh ./
RUN COPYDIR=/opt/quake/ioquake3 bash ./server_compile.sh
COPY ./start_server.sh ./
COPY base/baseq3/* ioquake3/baseq3/
COPY base/missionpack/* ioquake3/missionpack/

EXPOSE 27960/udp

ENTRYPOINT [ "sh", "./start_server.sh" ]
