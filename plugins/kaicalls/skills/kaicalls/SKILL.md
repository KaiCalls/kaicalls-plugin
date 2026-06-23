---
name: kaicalls
description: "Use when the user wants to connect KaiCalls, manage AI phone agents, review calls or transcripts, or start approved outbound calls through KaiCalls."
---

# KaiCalls

KaiCalls gives AI agents a phone. Use the hosted KaiCalls MCP connector first when it is available.

## When To Use

- The user asks to connect a KaiCalls account.
- The user wants to list or inspect KaiCalls agents.
- The user wants to review recent calls, call status, transcripts, or summaries.
- The user asks to place an outbound phone call with a KaiCalls agent.
- The user is building an integration with KaiCalls.

## Preferred Tooling Order

1. Use the bundled MCP server named `kaicalls`.
2. If MCP is unavailable, use the public REST API with a user-provided API key.
3. Use the live OpenAPI document as the source of truth for REST endpoint details.

## MCP Connector

Connector URL:

```text
https://www.kaicalls.com/api/mcp
```

Common MCP tools:

- `list_agents`
- `get_business_info`
- `list_recent_calls`
- `check_call_status`
- `get_transcript`
- `make_call`

## Safety Rules

- Do not place outbound calls unless the user clearly approved the recipient, purpose, and agent.
- Before calling, confirm the phone number is in E.164 format, for example `+15125551234`.
- For bulk or campaign-style calling, confirm the user approved the list and the calling purpose.
- Do not reveal recordings, transcripts, phone numbers, or lead details outside the authorized conversation.
- Prefer read-only inspection before write actions.

## Outbound Call Workflow

1. Identify the agent to use. If uncertain, list agents first.
2. Confirm the recipient phone number, recipient name if available, and call purpose.
3. Use `make_call` only after the user has approved the call.
4. After the call, report status, summary, and any next steps.

## Call Review Workflow

1. Use `list_recent_calls` or `check_call_status`.
2. If the call is complete and the user is authorized, use `get_transcript`.
3. Summarize outcome, requested follow-up, and any action items.
4. Avoid quoting long transcripts unless the user explicitly asks for a short excerpt.
