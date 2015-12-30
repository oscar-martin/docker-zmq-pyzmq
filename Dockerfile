FROM oscarmartin/zmqbase
MAINTAINER oscarmartinvicente@gmail.com

# Install needed packages
RUN apt-get update && apt-get install -y python-pip curl software-properties-common wget python-dev

# Install pyzmq
RUN pip install pyzmq

# Clean up
RUN apt-get purge -y python-dev
RUN apt-get clean && apt-get autoclean && apt-get -y autoremove

WORKDIR /project

ENTRYPOINT ["python"]
