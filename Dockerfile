FROM pytorch/pytorch:latest
ARG PYTHON_VERSION=3.7

RUN apt-get update
RUN apt-get install -y wget git

RUN pip install -U pip
RUN pip install flake8 jedi tensorboard jupyterlab gpytorch matplotlib
# install tensorboardX to /tmp for hparams in tensorboardX