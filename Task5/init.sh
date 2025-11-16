#!/bin/bash

kubectl create namespace test

kubectl run front-end-app -n test --image=nginx --labels role=front-end --expose --port 80
kubectl run back-end-app -n test --image=nginx --labels role=back-end --expose --port 80
kubectl run admin-front-end-app -n test --image=nginx --labels role=admin-front-end --expose --port 80
kubectl run admin-back-end-app -n test --image=nginx --labels role=admin-back-end --expose --port 80