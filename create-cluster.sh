#!/bin/bash
gcloud config set compute/zone us-central1-a
gcloud container clusters create minecraft --num-nodes 1
gcloud container clusters get-credentials minecraft