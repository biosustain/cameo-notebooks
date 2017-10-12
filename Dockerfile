FROM andrewosh/binder-base

MAINTAINER Nikolaus Sonnenschein <niko.sonnenschein@gmail.com>

USER root
RUN apt-get -y update && apt-get install -y swig libzmq3-dev libgmp-dev libglpk-dev glpk-utils pandoc python-dev python-pip libxml2 libxml2-dev zlib1g zlib1g-dev bzip2 libbz2-dev 
RUN pip install pip --upgrade
RUN pip install bokeh
RUN pip install python-libsbml-experimental -f http://nikosonnensche.in/wheels/index.html --no-index --trusted-host nikosonnensche.in
RUN pip install https://github.com/biosustain/cameo/archive/devel06.zip

RUN /home/main/anaconda/envs/python3/bin/pip install pip --upgrade
RUN /home/main/anaconda/envs/python3/bin/pip install bokeh
RUN /home/main/anaconda/envs/python3/bin/pip install python-libsbml-experimental -f http://nikosonnensche.in/wheels/index.html --no-index --trusted-host nikosonnensche.in
RUN /home/main/anaconda/envs/python3/bin/pip install https://github.com/biosustain/cameo/archive/devel06.zip

USER main
