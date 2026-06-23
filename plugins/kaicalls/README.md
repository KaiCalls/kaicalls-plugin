# KaiCalls Plugin

Official KaiCalls plugin for Codex, Claude Code, and agent runtimes that support plugin bundles.

KaiCalls gives AI agents a phone. Use this plugin to connect an agent to the hosted KaiCalls MCP connector, work with KaiCalls agents, review recent calls and transcripts, and start outbound calls when the user has clearly approved the action.

## What This Plugin Includes

- Hosted MCP connector configuration for `https://www.kaicalls.com/api/mcp`
- Skills for KaiCalls usage, REST API integration, and API-first signup
- Claude Code command prompts for connection, call review, and outbound call workflows
- Direct Claude Messages API MCP example
- Public setup, security, and submission notes

## Requirements

- A KaiCalls account
- For MCP/OAuth workflows: sign in to KaiCalls when your client prompts you
- For REST/API-key workflows: a KaiCalls API key from `https://www.kaicalls.com/dashboard/settings/api`

## MCP Connector

Connector URL:

```text
https://www.kaicalls.com/api/mcp
```

The hosted connector supports OAuth discovery from:

```text
https://www.kaicalls.com/.well-known/oauth-protected-resource
https://www.kaicalls.com/.well-known/oauth-authorization-server
https://www.kaicalls.com/.well-known/openid-configuration
```

The connector can list agents, show business information, list recent calls, check call status, retrieve completed call transcripts and summaries, and start outbound calls through accessible KaiCalls agents.

## Direct API

Base URL:

```text
https://www.kaicalls.com/api/v1
```

Public docs:

```text
https://www.kaicalls.com/docs/api
https://www.kaicalls.com/docs/openapi.yaml
https://www.kaicalls.com/api/v1/openapi.json
```

Use API keys only through environment variables, secret stores, or your agent runtime's secure configuration.

## Safety

- Do not place outbound calls unless the user clearly approved the recipient, purpose, and agent.
- Use E.164 phone numbers such as `+15125551234`.
- Treat call recordings, transcripts, lead data, and phone numbers as private customer data.
- Prefer read-only calls first: list agents, check recent calls, and inspect call status before write actions.
- Confirm the API key or OAuth grant has the required scope before attempting an action.

## Validation

From this plugin directory:

```bash
claude plugin validate . --strict
```

Codex authors should also run the current Codex plugin validator for their development environment before sharing through a Codex marketplace.

## Support

- Docs: `https://www.kaicalls.com/docs/api`
- Support: `support@kaicalls.com`
