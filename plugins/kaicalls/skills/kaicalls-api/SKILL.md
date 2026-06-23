---
name: kaicalls-api
description: "Use when building or debugging a direct KaiCalls REST API integration, including agents, calls, transcripts, webhooks, evals, keys, and discovery endpoints."
---

# KaiCalls API

Use this skill for direct REST API work. Prefer the MCP connector for interactive agent use.

## Source Of Truth

Use the live discovery endpoints first:

```text
GET https://www.kaicalls.com/api/v1/capabilities
GET https://www.kaicalls.com/api/v1/openapi.json
GET https://www.kaicalls.com/api/v1/schemas
```

Public docs:

```text
https://www.kaicalls.com/docs/api
https://www.kaicalls.com/docs/openapi.yaml
```

## Authentication

REST API calls use a bearer token:

```text
Authorization: Bearer <KAICALLS_API_KEY>
```

Use `KAICALLS_API_KEY` or a secure host-specific secret store. Never hardcode API keys.

## Common Scopes

- `workspaces:read`: view accessible workspaces
- `agents:read`: list and view agents
- `agents:write`: create and update agents
- `numbers:read`: list phone numbers
- `calls:read`: list and view call records
- `calls:write`: make outbound calls
- `leads:read`: list and view leads
- `sms:read`: list SMS messages
- `webhooks:read`: view webhook configuration
- `webhooks:write`: configure or remove webhooks
- `evals:read`: read eval scenarios and runs
- `evals:write`: manage and run evals

Request write scopes only when needed.

## Core REST Endpoints

- `GET /api/v1/agents`
- `GET /api/v1/agents?id=AGENT_ID`
- `POST /api/v1/agents`
- `PATCH /api/v1/agents`
- `POST /api/v1/calls`
- `GET /api/v1/calls`
- `GET /api/v1/calls?id=CALL_ID`
- `GET /api/v1/transcripts`
- `GET /api/v1/numbers`
- `GET /api/v1/balance`
- `GET /api/v1/usage`
- `GET /api/v1/webhooks`
- `POST /api/v1/webhooks`
- `DELETE /api/v1/webhooks?business_id=BUSINESS_ID`

## Rules

- Use query parameters such as `?id=` where documented. Do not invent dynamic path segments.
- Use E.164 phone numbers.
- Check `capabilities` or the OpenAPI document before relying on an endpoint.
- For write actions, verify the account, business, scope, and intended effect.
- For webhook secrets and API keys, store the value immediately in a secure secret store; many secrets are returned only once.

## Minimal Curl Pattern

```bash
curl https://www.kaicalls.com/api/v1/agents \
  -H "Authorization: Bearer $KAICALLS_API_KEY"
```
