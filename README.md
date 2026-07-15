# End-to-End DevOps Automation Project

## Project Overwiew

This project demonstrates an end-to-end CI/CD pipeline for a Java Maven web applicationusing modern DevOps tools. The infrastructure is provisioned with Terraform, configured using Ansible, integrated with Jenkins for CI, analyzed using SonarQube, containerized with Docker, stored in Docker Hub, and deployed to Kubernetes (Minikube) on AWS EC2.

---

## Tech Stack
- AWS EC2
- Terraform
- Ansible
- Git & GitHub
- Jenkins
- Maven
- SOnarQube
- Docker
- Docker Hub
- Kubernetes (Minikube)
- Java

---

## Project Structure

'''
devops-automation/
|__ ansible/
|   |__inventory
|   |__site.yml
|   |__roles/
|
|___kubernetes/
|   |__deployment.yml
|   |__service.yaml
|
|__terraform/
|  |__main.tf
|  |__variables.tf
|  |__outputs.tf
|
|__Jenkinsfile
|__README.md
|__.gitignore

'''

---

## CI/CD Workflow

1. Developer pushes code to gitHub.
2. Jenkins clones the repository.
3. Maven builds the Java application.
4. SonarQube performs code quality analysis.
5. Docker builds the application image.
6. Docker image is pushed to Docker Hub.
7. Kubernetes deploys the latest Docker image.
8. Application becomes available through a Kubernetes Service.

---
 
## Infrastructure

Infrastructure is provisioned using **Terraform**, including:

- Jenkins EC2
- Kubernetes EC2
- Security Groups

---

## Docker

Docker is used to containerize the JavaMaven application.

Image Repository:

'''
kunal18l/java-maven-webapp
'''

---

## Kubernetes

Application deployment is managed using:

- Deployment
- Service (NodePort)

Useful commands:

'''bash
kubectl get deployments
kubectl get pods
kubectl get svc
'''

---

## How to Run

### Terraform

'''bash
terraform init
terraform plan
terraform apply
'''

### Ansible

'''bash
ansible-playbook -i inventory site.yml
'''

### Jenkins

Run the Jenkins pipeline to:

- Build
- Scan
- Create Docker Image
- Push to Docker Hub

### Kubernetes

'''bash
kubectl apply -f deployment.yml
kubectl apply -f service.yaml
'''

---

## Screenshots


---

## Future Improvements:

- GitHub Webhooks
- Automatic Kubernetes Deployment from Jenkins
- ConfigMaps
- Secrets
- Ingress Controller
- Prometheus & Grafana Monitoring
- Helm Charts

---

## Author

Kunal

GitHun: https://github.com/Kunal-18L
