#!/bin/bash

if test "$TRAVIS_SECURE_ENV_VARS" = "true" -a "$TRAVIS_BRANCH" = "master";
then
  openssl aes-256-cbc -K $encrypted_cd22de430b6c_key -iv $encrypted_cd22de430b6c_iv -in qgep_rsa.enc -out ~/.ssh/id_rsa -d;
  chmod 600 ~/.ssh/id_rsa;
  git config --global user.email "qgep@opengis.ch";
  git config --global user.name "QGEP";
  git config --global push.default simple;
fi
