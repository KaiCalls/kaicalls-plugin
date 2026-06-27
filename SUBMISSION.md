# KaiCalls Plugin Submission

This repository is prepared for public plugin distribution.

## Claude Code Marketplace

Marketplace manifest:

```text
.claude-plugin/marketplace.json
```

Install:

```bash
claude plugin marketplace add KaiCalls/kaicalls-plugin
claude plugin install kaicalls@kaicalls
```

## Codex Marketplace

Marketplace manifest:

```text
.agents/plugins/marketplace.json
```

Install:

```bash
codex plugin marketplace add KaiCalls/kaicalls-plugin
```

## Directory Submission

Use either:

- Public GitHub repository link: `https://github.com/KaiCalls/kaicalls-plugin`
- Release zip asset: `kaicalls-0.1.0.zip`

## Validation

Required checks:

```bash
claude plugin validate . --strict
claude plugin validate plugins/kaicalls --strict
```

The plugin zip has the plugin files at archive root, so validators should also pass after extracting the zip and running validation from the extracted directory.
