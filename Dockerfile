FROM 931424238658.dkr.ecr.ap-south-1.amazonaws.com/base:nodev12-16
ENV APPDIR='/opt/app'
ENV FILEBEAT='false'
ENV STARTCMD="npm starting"
ENV LOGENV="prod"
ENV LOGNAME="api"
ENV  LOGPATH='/opt/app/logs/*'
WORKDIR /opt/app
COPY . /opt/app/
RUN   npm install
EXPOSE 5000
CMD ["supervisord"]
