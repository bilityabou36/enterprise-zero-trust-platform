# Lab 01 - Federated Identity Foundation

## Objective
Integrate Microsoft Entra ID with AWS IAM Identity Center using SAML and SCIM so that enterprise identity becomes the source of truth for AWS access.

## Why This Matters
Manual IAM users create security debt, weak lifecycle control, and inconsistent offboarding.

This lab establishes identity as the control plane for the Enterprise Zero Trust Platform.

## Architecture Summary
Microsoft Entra ID federates authentication into AWS IAM Identity Center.

AWS IAM Identity Center provides permission sets and account access based on centrally managed enterprise identities.

## Threat Addressed
Credential theft and orphaned IAM users.

## STRIDE Category
Spoofing

## Decision Reference
See `decisions/ADR-001-federated-identity.md`

## Threat Model Reference
See `threat-models/identity-federation-threat-model.md`

## Expected Deliverables
- SAML federation configured
- SCIM provisioning configured
- Permission set created
- Successful user login through AWS IAM Identity Center
- Evidence screenshots captured

## Evidence to Capture
- Entra enterprise application configuration
- AWS IAM Identity Center external identity source
- SCIM provisioning status
- Permission set assignment
- Successful SSO login screen

## Success Criteria
- No manual IAM user required for workforce access
- User can authenticate through Entra ID
- Access to AWS account is controlled through IAM Identity Center
