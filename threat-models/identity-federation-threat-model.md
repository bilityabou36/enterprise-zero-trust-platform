# Milestone 1: Identity & Access Management (IAM) Threat Model

| Threat | Category | Mitigation |
| :--- | :--- | :--- |
| **Credential Phishing** | Spoofing | Enforce **FIDO2/Passkeys** (Lab 02). |
| **MFA Fatigue/Proxy** | Spoofing | Number matching and biometric requirements. |
| **Exposed SSH Keys** | Information Disclosure | **SSM Session Manager** (Lab 04) - Remove all SSH keys. |
