#!/bin/sh -xe

mkdir /etc/ansible
cp -f ${CODEBUILD_SRC_DIR}/files/ansible.cfg /etc/ansible/ansible.cfg

packer build -color=false packer.json
