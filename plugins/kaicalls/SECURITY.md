# Security

KaiCalls handles phone numbers, recordings, transcripts, lead details, and business configuration. Treat all of that data as sensitive.

## Reporting

Report security issues to:

```text
support@kaicalls.com
```

## Plugin Security Rules

- Do not store API keys in this repository or plugin package.
- Do not store OAuth tokens in plugin files.
- Do not include real customer transcripts, recordings, phone numbers, email addresses, or call IDs in examples.
- Do not perform outbound calls without explicit user authorization.
- Use OAuth through the hosted MCP connector when available.
- Use API keys only through environment variables, secure user configuration, or the host application's secret store.
- Prefer least-privilege scopes.

## External Effects

The `make_call` MCP tool and `POST /api/v1/calls` create real outbound calls. These actions may bill the KaiCalls account and contact real people. Confirm the recipient, purpose, and agent before use.
