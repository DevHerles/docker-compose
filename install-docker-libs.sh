#!/bin/bash

function installLibs() {
  apt update
  apt install git  xclip clips -y
  ssh-keygen -o -t rsa -C "hincalla@minsa.gob.pe" -b 4096
  python3 -m pip install --user --upgrade setuptools wheel
  pip3 install -U git+ssh://git@git.minsa.gob.pe/oidt/mpi-client.git@develop#egg=mpi_client
}


