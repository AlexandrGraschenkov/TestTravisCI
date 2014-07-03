#!/bin/sh
set -e

brew update
brew upgrade xctool
xctool --version
openssl aes-256-cbc -k "$ENCRYPTION_SECRET" -in scripts/profile/AlexGraAdHoc.mobileprovision.enc -d -a -out scripts/profile/AlexGraAdHoc.mobileprovision
openssl aes-256-cbc -k "$ENCRYPTION_SECRET" -in scripts/cert/dist.cer.enc -d -a -out scripts/cert/dist.cer
openssl aes-256-cbc -k "$ENCRYPTION_SECRET" -in scripts/cert/dist.p12.enc -d -a -out scripts/cert/dist.p12