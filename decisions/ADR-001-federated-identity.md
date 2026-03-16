# ADR-001: Centralized Identity Federation via Microsoft Entra ID

## Status
**Accepted** (2026-03-16)

## Context
As the AWS footprint grows into a multi-account organization (Security, Prod, General OUs), managing local IAM users in each account is a security and operational liability. 
* **Security Risk:** High probability of "orphan accounts" (users not removed after offboarding).
* **Operational Overhead:** Admins must manage multiple sets of credentials.
* **Compliance Gap:** Lack of centralized MFA enforcement and device posture checks.

## Decision
We will utilize **Microsoft Entra ID** as the authoritative Identity Provider (IdP) for the entire cloud ecosystem. This will be integrated with **AWS IAM Identity Center** using:
1.  **SAML 2.0** for cross-domain authentication.
2.  **SCIM 2.0** for automated user provisioning and lifecycle management.



## Alternatives Considered
* **Local IAM Users:** Rejected due to lack of scalability and high risk of credential leakage.
* **AWS Managed Microsoft AD:** Rejected to avoid the cost of managing domain controllers.

## Consequences
* **Positive:** Automated user lifecycle (HR offboarding = Cloud offboarding).
* **Negative:** Creates a hard dependency on Entra ID availability.

## Compliance Mapping
* **NIST 800-207:** Supports the "Identity" pillar of Zero Trust.
