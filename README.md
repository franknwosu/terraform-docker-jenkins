# 🐳 Local Infrastructure as Code with Terraform & Docker

Welcome to the Infrastructure as Code (IaC) foundational practical lab! This repository contains a fully automated workflow designed to teach you how to manage infrastructure lifecycles using **HashiCorp Terraform** and **GitHub Actions**—completely on your local workstation without requiring a cloud provider account (AWS/Azure/GCP).

By using a local workflow, you focus 100% on learning Terraform syntax, state management drift, and automated pipelines without worrying about cloud billing, identity access management (IAM), or complex VPC networking.

---

## 🎯 Lab Objectives
* Initialize and configure a third-party resource provider (`kreuzwerker/docker`).
* Author declarative configuration files to deploy a local Nginx web server container.
* Witness state management tracking mechanics first-hand.
* Automate validation and test-deployments using a continuous integration (CI) pipeline via GitHub Actions.

---

## 🛠️ Prerequisites

Ensure you have the following core tools active on your host machine before starting:
* **Docker Engine / Docker Desktop** (Must be running)
* **Terraform CLI** (v1.2.0 or higher)
* **Git** ---

## 📁 Repository Structure

```text
terraform-docker-jenkins/
├── .github/
│   └── workflows/
│       └── cicd.yml      # Automated CI/CD execution workflow pipeline
├── .gitignore            # Security file preventing state file tracking leaks
├── main.tf               # Core infrastructure mapping configuration
├── variables.tf          # External variable parameters declaration
└── README.md             # This structural lab guide note