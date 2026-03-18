# AKS GitOps Platform

This repository demonstrates a GitOps setup using:
- Terraform (AKS infrastructure)
- ArgoCD (GitOps deployment)
- Helm (application packaging)
- Prometheus + Grafana (monitoring)

Steps:
1. Provision AKS using Terraform.
2. Install ArgoCD in the cluster.
3. Apply root-app.yaml to bootstrap applications.
