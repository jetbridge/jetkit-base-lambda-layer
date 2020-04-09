ARG PY_VERSION=3.7

FROM lambci/lambda:build-python${PY_VERSION}

# RUN yum install -y libxml2-devel

WORKDIR /var/task
RUN pip${PY_VERSION} install -t python/lib/python${PY_VERSION}/site-packages werkzeug flask sqlalchemy faker pytest future pytz alembic jinja2 bs4 requests marshmallow python-dateutil==2.8.0
