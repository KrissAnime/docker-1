FROM debian

RUN apt-get update && apt-get upgrade && apt-get install curl bzip2 -y

EXPOSE 30033 9987/udp 10011 41144

RUN useradd teamspeak3
WORKDIR /home/teamspeak3

RUN curl http://dl.4players.de/ts/releases/3.0.13.6/teamspeak3-server_linux_amd64-3.0.13.6.tar.bz2 > teamspeak-server.tar.bz2

RUN tar -jxvf teamspeak-server.tar.bz2

RUN echo "machine_id= \ndefault_voice_port=9987 \nvoice_ip=0.0.0.0 \nlicensepath= \nfiletransfer_port=30033 \nfiletransfer_ip=0.0.0.0 \nquery_port=10011 \nquery_ip=0.0.0.0 \
\nquery_ip_whitelist=query_ip_whitelist.txt \nquery_ip_blacklist=query_ip_blacklist.txt \ndbplugin=ts3db_sqlite3 \ndbpluginparameter= \ndbsqlpath=sql/ \ndbsqlcreatepath=create_sqlite/ \
\ndbconnections=10 \nlogpath=logs \nlogquerycommands=0 \ndbclientkeepdays=90 \nlogappend=1" >> ts3server.ini

USER teamspeak3

CMD ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh", "inifile=ts3server.ini", "license_accepted=1"]