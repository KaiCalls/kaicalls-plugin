---
name: kaicalls-signup
description: "Use when helping a new user create or connect a KaiCalls account through API-first signup, checkout, dashboard access, or the hosted MCP connector."
---

# KaiCalls Signup

Use this skill for onboarding a new KaiCalls account or connecting an existing account.

## Existing Account

For an existing account, prefer the hosted MCP connector:

```text
https://www.kaicalls.com/api/mcp
```

The user signs in with KaiCalls and approves access. Access is scoped to the authenticated account and linked businesses.

## New Account

API-first signup uses:

```text
POST https://www.kaicalls.com/api/v1/signup
```

Common fields:

- `business_name`: required business name
- `email`: required account email
- `business_type`: optional category such as legal services, healthcare, or home services
- `website`: optional business website
- `phone_forward_to`: optional E.164 forwarding number
- `plan_id`: optional plan identifier

## Signup Workflow

1. Collect the business name and account email.
2. Ask for optional business type, website, forwarding number, and plan.
3. Submit the signup request if the user approved account creation.
4. Tell the user to securely store the returned API key if one is returned.
5. If a checkout URL is returned, send the user to checkout for payment capture.
6. Use the dashboard or MCP connector after signup is complete.

## Safety Rules

- Do not create accounts with email addresses the user did not provide or approve.
- Do not expose returned API keys in logs, tickets, public messages, or source files.
- Do not assume a sandbox key prefix exists unless the live docs say it is available.
- Treat checkout and dashboard magic links as private.
