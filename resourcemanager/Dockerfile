FROM bde2020/hadoop-base:1.0.0
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ADD conf/yarn-site.xml /etc/hadoop/

ADD ../base/entrypoint.sh /entrypoint.sh

RUN chmod a+x /entrypoint.sh
RUN ./entrypoint.sh

EXPOSE 50030
EXPOSE 54311

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
