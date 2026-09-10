# Cloud Identity & Zero Trust Architecture

Hands-on lab building a multi-account AWS environment where every request has to prove who it is and what it's allowed to do, every time. No implicit trust from network location, no standing broad permissions. Built to close a real gap in identity federation knowledge, then formally scored against a government zero trust framework instead of just asserting it's secure.

## What's In Here

- **Account structure** — multi-account AWS Organization with least-privilege IAM and Service Control Policies as org-wide guardrails, capping what even an account admin can do
- **Cross-account access** — controlled, auditable roles for access between accounts
- **Identity federation** — SSO with SAML and OIDC, walked through step by step at the protocol level, including what a decoded token actually looks like
- **Traffic visibility** — VPC Flow Logs analyzed serverlessly via Athena, no standing infrastructure
- **Threat detection** — GuardDuty for automated detection, IAM Access Analyzer for excess or unintended permissions
- **Misconfiguration exercise** — one intentional mistake (overly permissive IAM policy or public S3 bucket), then detected and fixed using GuardDuty and Access Analyzer
- **Maturity assessment** — final build scored against NIST 800-207 and the CISA Zero Trust Maturity Model, with an honest read on where a real enterprise environment would need to go further

## Stack

`AWS Organizations` `IAM` `Service Control Policies` `IAM Identity Center (SSO)` `SAML` `OIDC` `Athena` `GuardDuty` `IAM Access Analyzer`

The point isn't to get login working and call it done. Most cloud breaches trace back to excessive or poorly controlled access, not novel exploits, so this lab is built around actually understanding identity and permissions at the protocol level, then proving it with a real framework instead of just asserting it.

## Repo Structure

- `/accounts-scps` — AWS Organization setup, account structure, Service Control Policies
- `/identity-federation` — SSO configuration, SAML/OIDC walkthrough, token breakdown
- `/logging-detection` — VPC Flow Logs + Athena queries, GuardDuty findings
- `/misconfiguration-exercise` — intentional mistake, detection, and remediation
- `/maturity-assessment` — NIST 800-207 / CISA ZTMM scoring and self-assessment
