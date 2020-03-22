FROM lambci/lambda:build-python3.8

# RUN yum install -y libxml2-devel

RUN pip3.8 install -t /opt/python werkzeug flask sqlalchemy faker pytest future pytz alembic jinja2 bs4 requests marshmallow python-dateutil==2.8.0

WORKDIR /var/task
