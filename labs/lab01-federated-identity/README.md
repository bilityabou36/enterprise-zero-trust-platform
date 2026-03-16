# Lab 01: Federated Identity Foundation (SAML 2.0 + SCIM)

## 🎯 Executive Summary
In this lab, I established a centralized Identity Control Plane by federating **Microsoft Entra ID** with **AWS IAM Identity Center**. This architecture eliminates the need for local IAM users, reducing the attack surface and ensuring a Single Source of Truth for identity across a multi-account AWS Organization.

---

## 🏗️ Architecture Overview
The solution utilizes **SAML 2.0** for authentication (the handshake) and **SCIM 2.0** for automatic provisioning (the identity sync).

- **Identity Provider (IdP):** Microsoft Entra ID
- **Service Provider (SP):** AWS IAM Identity Center
- **Protocol:** SAML 2.0
- **Provisioning:** SCIM (Automatic)


---

## 🛡️ Threat Model Mitigation (STRIDE)
| Threat Category | Threat Description | Mitigation Strategy |
| :--- | :--- | :--- |
| **Spoofing** | Attacker uses local IAM credentials | **Resolution:** Disabled local IAM users; enforced Federated SSO. |
| **Information Disclosure** | Orphaned accounts remain active after employee departure | **Resolution:** SCIM provisioning ensures real-time de-provisioning. |
| **Elevation of Privilege** | Users assigned excessive local permissions | **Resolution:** Centralized Permission Sets mapped to Entra ID Groups. |

---

## 🛠️ Implementation Details

### 1. The Handshake (SAML)
- Exchanged Metadata XML between Entra ID and AWS.
- Configured **Unique User Identifier (NameID)** to map to `user.mail` to ensure attribute alignment.
- **Evidence:** `evidence/azure-saml-claims.png`, `evidence/federation-established-entra-to-aws.png`

### 2. The Identity Engine (SCIM)
- Enabled Automatic Provisioning in AWS.
- Configured the SCIM Endpoint and Secret Token in Entra ID.
- **Evidence:** `evidence/scim-provisioning-enabled.png`, `evidence/scim-user-created-in-aws.png`

### 3. Authorization (Permission Sets)
- Created an **AdministratorAccess** Permission Set.
- Provisioned the Entra ID user to four distinct AWS accounts (PROD, Security, General).
- **Evidence:** `evidence/permission-set-admin-access.png`

---

## 🚧 Conflict & Resolution (The "Architect's Challenge")
**Issue:** During the initial testing, I encountered an `HTTP 400 Bad Request` at the AWS sign-in endpoint.
**Root Cause:** A mismatch between the **NameID claim** sent by Entra ID (`userprincipalname`) and the identity stored in AWS (`email`).
**Resolution:** Updated the Entra ID claim mapping to use `user.mail` as the primary identifier and cleared the browser session state.

---

## ✅ Final Validation
Successfully logged into the **AWS Access Portal** using Entra ID credentials, with a unified view of all 4 AWS Organization accounts.

**Final Evidence:** `evidence/aws-console-federated-login.png`

---

## 📖 Architecture Decision Records (ADRs)
- [ADR-001: Centralized Identity via Entra ID](../../decisions/001-identity-federation.md).

