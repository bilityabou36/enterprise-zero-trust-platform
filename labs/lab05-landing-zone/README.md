# 🔐 Lab 05 – Secure Landing Zone (Terraform + DevSecOps)

## 📌 Overview

In this lab, I transitioned from manual cloud configuration to **Infrastructure as Code (IaC)** by building a **secure AWS landing zone using Terraform**.

This lab demonstrates a core DevSecOps principle:

> **Security must be enforced before deployment, not after.**

---

## 🎯 Objectives

* Build AWS infrastructure using **Terraform (IaC)**
* Implement a **remote backend** (S3 + DynamoDB)
* Enforce **state locking and versioning**
* Apply **security scanning (Checkov) before deployment**
* Deploy a **segmented network architecture (VPC + subnets)**

---


---

## 🧱 Infrastructure Components

* **VPC** (`10.0.0.0/16`)
* **Public Subnet** (`10.0.1.0/24`)
* **Private Subnet** (`10.0.2.0/24`)
* **Internet Gateway**
* **Remote Backend**

  * S3 (state storage)
  * DynamoDB (state locking)

---

## 🔐 DevSecOps Implementation

### 1. Remote Backend (State Management)

* S3 bucket used to store Terraform state
* Versioning enabled for recovery and auditability
* DynamoDB used for state locking to prevent concurrent modifications

📸 Evidence:

* `lab05-backend-s3-state-bucket-created.png`
* `lab05-backend-versioning-enabled.png`
* `lab05-backend-dynamodb-lock-table-created.png`

---

### 2. Infrastructure as Code

All resources were defined using Terraform:

```hcl
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
```

📸 Evidence:

* `lab05-main-terraform-network-code.png`

---

### 3. Security Scanning (Shift Left)

Used **Checkov** to scan Terraform code before deployment.

#### ❌ Initial Finding

* Public subnet automatically assigning public IPs

#### ✅ Remediation

* Disabled `map_public_ip_on_launch`

📸 Evidence:

* `lab05-checkov-scan-results.png`
* `lab05-checkov-scan-passed.png`

---

### 4. Terraform Workflow

* `terraform init` → initialize backend
* `terraform validate` → validate configuration
* `checkov -d .` → security scan
* `terraform plan` → review changes
* `terraform apply` → deploy infrastructure

📸 Evidence:

* `lab05-terraform-init-success.png`
* `lab05-terraform-validate-success.png`
* `lab05-terraform-plan-success.png`
* `lab05-terraform-apply-success.png`

---

## 🧠 Key Learning Outcomes

* In
