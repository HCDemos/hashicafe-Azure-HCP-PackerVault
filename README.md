# hashicafe-Azure-HCP-PackerVault
deploy hashicafe app to Azure using Terraform Cloud, HCP Packer, and HCP Vault
This repo is based on the Terraform code used in the [DevOps Lab](https://learn.microsoft.com/en-us/shows/devops-lab/?terms=hashicorp) episode "Automating Azure Image Pipelines with HCP Packer".  That original repo has been split into two separate repos, this one for the HCP Packer/HCP Vault/Terraform Cloud  deployment of HashiCafe to Azure and a companion [image workflow repo](https://github.com/HCDemos/hcp-packer-azure). Both repos have been enhanced to leverage dynamic Azure credentials using HCP Vault, which was originally configured by following the directions in the learn [Azure Secrets Engine tutorial](https://developer.hashicorp.com/vault/tutorials/secrets-management/azure-secrets).  For this repo a Github Actions pipeline has been configured so that updates to the repo will trigger image updates.  Since the image updates take some time (~13minutes for each), the actual image that gets updated is controlled by updating the reference in the pipeline yaml file (so you can build the base image version before a demo and perhaps the child image during the demo - but have other things to talk about...)

![Alt text](/images/deployment-workflow-TFCB-HCPVault-HCPPacker-Azure.png "Github- TFCB - HCPVault - HCPPacker - Azure")

The HashiCafe application depoloyed by this code will reference the "latest" channel for the child image ubuntu20-nginx as maintained by HCP Packer.