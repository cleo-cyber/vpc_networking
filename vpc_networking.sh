#!/bin/bash

#kadimacleo92@gmail.com

gcloud compute networks subnets list --network default

gcloud compute routes list

gcloud compute firewall-rules list --filter="network=default"

gcloud compute firewall-rules delete default

gcloud compute networks delete default

gcloud compute instances create my-demo-instance --network default

gcloud compute networks create mynetwork --subnet-mode=auto

gcloud compute instances create mynet-us-vm --zone us-central1-c  --machine-type f1-micro

gcloud compute instances create mynet-eu-vm --zone europe-central2-a  --machine-type f1-micro

gcloud compute ssh --project= PROJECT_ID --zone=us-central1-c mynet-us-vm

gcloud compute firewall-rules delete mynetwork-allow-icmp

gcloud compute firewall-rules delete mynetwork-allow-custom

gcloud compute firewall-rules delete mynetwork-allow-ssh