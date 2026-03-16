# Enterprise Zero Trust Security Platform

This repository documents the architecture and implementation of a **production-style Zero Trust security platform on AWS**.

The platform is built through a **24-week architecture program** focused on designing security the way modern cloud enterprises operate.

---

# Architecture Goals

This platform demonstrates how to implement:

• Identity-first security  
• Multi-account AWS governance  
• DevSecOps security pipelines  
• Data protection and classification  
• Cloud-native SOC operations  
• Automated incident response  
• AI-assisted threat detection  

---

# Architecture Layers

Identity Layer  
Microsoft Entra ID → AWS IAM Identity Center

Network Layer  
Transit Gateway + Inspection VPC

Compute Layer  
EKS / EC2 / Serverless

Data Layer  
S3 + Macie + KMS

Detection Layer  
Security Lake + GuardDuty + SIEM

Automation Layer  
Lambda SOAR + AI threat detection

---

# Repository Structure

