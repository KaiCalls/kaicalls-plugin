# KaiCalls Setup

## Codex

1. Install the KaiCalls plugin from your configured marketplace.
2. Start a new Codex thread.
3. Ask Codex to use KaiCalls, for example: "Show my recent KaiCalls calls."
4. If the MCP connector requires authorization, complete the KaiCalls sign-in flow when prompted.

The bundled MCP server is named `kaicalls` and points to:

```text
https://www.kaicalls.com/api/mcp
```

## Claude Code

1. Install the plugin or add the marketplace that contains it.
2. Run `claude plugin validate <plugin-path> --strict` during development.
3. Start a new Claude Code session after installation.
4. Use `/kaicalls:connect` for connection guidance or ask naturally.

## Direct API Key Use

Set an API key only in secure configuration:

```powershell
$env:KAICALLS_API_KEY = "<KAICALLS_API_KEY>"
```

Never commit API keys, bearer tokens, transcripts, recordings, or customer phone numbers to this plugin.

## Required Scopes

Common scopes:

- `agents:read`: list and view accessible agents
- `calls:read`: list calls, check status, and read transcripts or summaries
- `calls:write`: start approved outbound calls
- `numbers:read`: list assigned phone numbers
- `workspaces:read`: view accessible workspaces

Request write scopes only when the workflow requires them.
