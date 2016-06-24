#!/bin/bash
dotnet build -c Release
dotnet restore --packages lib/
(cd ../ && sudo docker build -t 42north/ubuntu-xenial-dcp-sample-app:latest ubuntu-xenial-dcp-sample-app/)
sudo docker push 42north/ubuntu-xenial-dcp-sample-app:latest