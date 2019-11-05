# KMS

FROM python:3.5.9-alpine3.10

MAINTAINER yinping

USER root

RUN pip3 install tzlocal pysqlite3
RUN wget -O- https://github.com/SystemRage/py-kms/archive/master.zip | unzip -d /opt/ -

EXPOSE 1688

CMD ["python /opt/py-kms-master/py-kms/pykms_Server.py"]

