# Cloud Identity & Zero Trust Architecture
 
Hands-on lab building a multi-subscription Azure environment where every request has to prove who it is and what it's allowed to do, every time. No implicit trust from network location, no standing broad permissions. Built to close a real gap in identity federation knowledge, then formally scored against a government zero trust framework instead of just asserting it's secure.
 
# What's In Here
 
- **Subscription structure** — multi-subscription environment under a single Entra ID tenant, using Management Groups and Azure Policy as org-wide guardrails, plus least-privilege Azure RBAC
- **Identity federation** — Entra ID enterprise app registrations with SAML and OIDC, walked through step by step at the protocol level, including what a decoded token actually looks like
- **Conditional Access & PIM** — context-aware authentication policies and just-in-time privileged access, the pieces that actually make this zero trust instead of just SSO
- **Traffic visibility** — NSG Flow Logs analyzed via Log Analytics, no standing infrastructure
- **Threat detection** — Microsoft Defender for Cloud for automated detection, Entra ID Access Reviews for excess or unintended permissions
- **Misconfiguration exercise** — one intentional mistake (overly permissive RBAC assignment or public blob storage container), then detected and fixed using Defender for Cloud and Access Reviews
- **Maturity assessment** — final build scored against NIST 800-207 and the CISA Zero Trust Maturity Model, with an honest read on where a real enterprise environment would need to go further
# Stack
 
`Azure Management Groups` `Azure Policy` `Azure RBAC` `Entra ID` `Conditional Access` `Privileged Identity Management` `SAML` `OIDC` `Log Analytics` `Microsoft Defender for Cloud` `Entra ID Access Reviews`
 
The point isn't to get login working and call it done. Most cloud breaches trace back to excessive or poorly controlled access, not novel exploits, so this lab is built around actually understanding identity and permissions at the protocol level, then proving it with a real framework instead of just asserting it.
 
# Repo Structure
 
- `/subscriptions-policy` — Management Group setup, subscription structure, Azure Policy definitions
- `/identity-federation` — Entra ID app registration, SAML/OIDC walkthrough, token breakdown, Conditional Access and PIM config
- `/logging-detection` — NSG Flow Logs + Log Analytics queries, Defender for Cloud findings
- `/misconfiguration-exercise` — intentional mistake, detection, and remediation
- `/maturity-assessment` — NIST 800-207 / CISA ZTMM scoring and self-assessment
