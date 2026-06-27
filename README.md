# KaiCalls Plugin

Official KaiCalls plugin distribution repository.

KaiCalls gives AI agents a phone. This repository packages the KaiCalls plugin for Claude Code, Codex, and compatible agent runtimes. The plugin bundles public KaiCalls usage skills and the hosted KaiCalls MCP connector at:

```text
https://www.kaicalls.com/api/mcp
```

## Install In Claude Code

```bash
claude plugin marketplace add KaiCalls/kaicalls-plugin
claude plugin install kaicalls@kaicalls
```

Then start a new Claude Code session and use:

```text
/kaicalls:connect
```

## Install In Codex

```bash
codex plugin marketplace add KaiCalls/kaicalls-plugin
```

Then open the Codex plugin directory, choose the KaiCalls marketplace, and install KaiCalls.

## Plugin Contents

The plugin lives at:

```text
plugins/kaicalls
```

It includes:

- `.claude-plugin/plugin.json`
- `.codex-plugin/plugin.json`
- `.mcp.json`
- Skills for KaiCalls usage, REST API integrations, and signup
- Commands for account connection, recent call review, and approved outbound calls
- Security and setup documentation

## Validate

```bash
claude plugin validate . --strict
claude plugin validate plugins/kaicalls --strict
```

Codex plugin authors should also validate `plugins/kaicalls` with the current Codex plugin validator before publishing through a Codex marketplace.

## Direct Plugin Zip

For directory submission flows that accept a plugin zip, use the release asset:

```text
kaicalls-0.1.0.zip
```

The zip contains the plugin files at archive root, including `.claude-plugin/plugin.json` and `.codex-plugin/plugin.json`.

## Safety

Outbound calls are real external actions. The plugin instructs agents to confirm recipient, purpose, phone number, and agent before using KaiCalls to place a call.

## Links

- KaiCalls: https://www.kaicalls.com
- API docs: https://www.kaicalls.com/docs/api
- OpenAPI: https://www.kaicalls.com/docs/openapi.yaml
- Privacy: https://www.kaicalls.com/privacy-policy
- Terms: https://www.kaicalls.com/terms-of-service
