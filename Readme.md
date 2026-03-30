# 🚀 AWS DevOps CI/CD Pipeline Project

## 📌 Overview
This project demonstrates a complete CI/CD pipeline using Docker, GitHub Actions, and AWS EC2. The goal is to automate the deployment of a static website.

---

## 🧰 Tech Stack

- Terraform (Infrastructure provisioning)
- AWS EC2 (Compute)
- Docker (Containerization)
- Docker Hub (Image Registry)
- GitHub Actions (CI/CD)

---

## 🏗️ Architecture

---

## 🔄 Workflow

1. Developer pushes code to GitHub
2. GitHub Actions triggers CI pipeline
3. Docker image is built
4. Image is pushed to Docker Hub
5. CD pipeline connects to EC2 via SSH
6. Latest image is pulled
7. Old container is stopped and removed
8. New container is deployed

---

## 🐳 Docker Setup

### Dockerfile
```Dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html