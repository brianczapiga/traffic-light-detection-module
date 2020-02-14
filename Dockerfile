FROM python:3.6.10-buster

WORKDIR /root/traffic

COPY requirements.txt /root/traffic/

RUN pip install -r requirements.txt

# cpu only
RUN pip install https://files.pythonhosted.org/packages/22/cc/ca70b78087015d21c5f3f93694107f34ebccb3be9624385a911d4b52ecef/tensorflow-1.12.0-cp36-cp36m-manylinux1_x86_64.whl

COPY * /root/traffic/
