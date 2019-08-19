

apt-get update && apt-get upgrade && \
apt-get install wget bzip2 -y
adduser --disabled-login teamspeak
wget http://dl.4players.de/ts/releases/3.1.1/teamspeak3-server_linux_amd64-3.1.1.tar.bz2
tar xvf teamspeak3-server_linux_amd64-3.1.1.tar.bz2
cd teamspeak3-server_linux_amd64 && mv * /home/teamspeak && cd .. && rm -rf teamspeak3*
touch /home/teamspeak/.ts3server_license_accepted
chown -R teamspeak:teamspeak /home/teamspeak
https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2
echo "[Unit]
Description=TeamSpeak 3 Server
After=network.target

[Service]
WorkingDirectory=/home/teamspeak/
User=teamspeak
Group=teamspeak
Type=forking
ExecStart=/home/teamspeak/ts3server_startscript.sh start inifile=ts3server.ini
ExecStop=/home/teamspeak/ts3server_startscript.sh stop
PIDFile=/home/teamspeak/ts3server.pid
RestartSec=15
Restart=always

[Install]
WantedBy=multi-user.target" >> /lib/systemd/system/teamspeak.service

apt-get install systemd libpam-systemd systemd-ui ssh??
service ssh start
systemctl --system daemon-reload