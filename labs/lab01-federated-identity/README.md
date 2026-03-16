# Lab 01 – Federated Identity Foundation

## Objective
Implement enterprise identity federation between Microsoft Entra ID and AWS IAM Identity Center using SAML and SCIM provisioning.

## Architecture
User authentication and authorization is managed through Microsoft Entra ID while AWS IAM Identity Center provides access to AWS accounts via permission sets.

## Technologies
- Microsoft Entra ID
- AWS IAM Identity Center
- AWS Organizations
- SAML Federation
- SCIM Provisioning

## Architecture Diagram
../../architecture/identity-federation.drawio

## Key Components
- SAML authentication between Entra ID and AWS
- SCIM user provisioning
- Permission sets for AWS access
- AWS Organizations multi-account access

## Evidence

### Identity Center Enabled
![identity-center-enabled](evidence/screenshots/identity-center-enabled.png)

### Azure Enterprise Application
![enterprise-app](evidence/screenshots/enterprise-app.png)

### SAML Configuration
![saml-config](evidence/screenshots/saml-basic-config.png)

### SCIM Provisioned User
![scim-user](evidence/screenshots/scim-user-created-in-aws.png)

### Permission Set
![permission-set](evidence/screenshots/permission-set-admin-access.png)

### AWS Portal Login
![aws-login](evidence/screenshots/aws-sso-portal-login.png)

### Federated Console Access
![console](evidence/screenshots/aws-console-federated-login.png)

## Result
Successful federated authentication from Microsoft Entra ID into AWS IAM Identity Center with automatic user provisioning via SCIM and permission-set based access to AWS Organizations accounts.
