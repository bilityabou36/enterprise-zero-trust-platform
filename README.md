# Enterprise Zero Trust Security Platform

A production-grade implementation of a Zero Trust security ecosystem across AWS and Microsoft Entra ID. This project documents a 24-week engineering program focused on building resilient, identity-centric cloud infrastructure.

---

## 🏗️ Global Architecture Overview

The platform is designed around the **Identity-as-the-Perimeter** model. By integrating best-of-breed enterprise tools (Microsoft Entra, Defender) with AWS cloud-native infrastructure, this architecture eliminates traditional VPN-based trust in favor of continuous verification.


### Architecture Pillars:
* **Identity:** Centralized Federation (SAML 2.0) & Lifecycle Automation (SCIM).
* **Governance:** Multi-account AWS Organizations & Service Control Policies (SCPs).
* **DevSecOps:** Hardened CI/CD pipelines with automated security gates.
* **Observability:** Centralized Security Data Lake & SIEM (Microsoft Sentinel).

---

## 🗺️ Implementation Roadmap

| Milestone | Focus | Status | Key Lab Artifacts |
| :--- | :--- | :--- | :--- |
| **01** | **Identity Fabric** | 🚧 *In Progress* | [Lab 01: SAML/SCIM Federation](./labs/milestone-1/lab-01/) |
| **02** | **Landing Zone** | ⏳ *Planned* | Multi-account setup & SCP Guardrails |
| **03** | **DevSecOps** | ⏳ *Planned* | Secure CI/CD & Image Scanning |
| **04** | **Data Security** | ⏳ *Planned* | KMS Encryption & Macie Discovery |
| **05** | **SOC / SIEM** | ⏳ *Planned* | Sentinel Integration & Security Lake |
| **06** | **Auto-Response** | ⏳ *Planned* | Lambda SOAR & AI Detection |

---

## 📂 Repository Structure

* **/architecture:** Technical diagrams and system flows.
* **/decisions:** Architecture Decision Records (ADRs) documenting the "Why."
* **/labs:** Weekly technical implementation reports and evidence.
* **/threat-models:** STRIDE analysis and risk mitigation mapping.
* **/infrastructure:** Terraform modules and environment configurations.

---

## 📜 Certifications Alignment
This program is technically aligned with the following professional certifications:
1. **AWS Certified Security – Specialty** (Expected Week 9)
2. **AWS Certified Solutions Architect – Professional** (Expected Week 18)

---

## 👤 Author
**Abou Bility** *Cybersecurity Professional | Aspiring Zero Trust Architect 
