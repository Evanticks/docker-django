FROM python:3
WORKDIR /usr/src/app
MAINTAINER Antonio Marchán "wildworld14@gmail.com"
RUN pip --root-user-action=ignore --upgrade pip && pip install --root-user-action=ignore django mysqlclient && git clone https://github.com/Evanticks/docker-django.git /usr/src/app && mkdir static
#ADD migraciones.sh /usr/src/app/
RUN chmod +x /usr/src/app/migraciones.sh
ENTRYPOINT ["/usr/src/app/migraciones.sh"]
