# chatgpt-gpt-edgepress

Template + instructions for publishing an EdgePress **Custom GPT** in ChatGPT. Zero server code — the GPT calls your tenant's `/api/v1` directly via an Action driven by the OpenAPI snapshot in this repo.

See [`INSTALL.md`](./INSTALL.md) for step-by-step publish instructions (5 minutes).

## Files

- `instructions.md` — GPT system prompt (paste into Custom GPT builder).
- `openapi.snapshot.json` — snapshot of the tenant OpenAPI spec (paste into Action schema).
- `scripts/sync-openapi.sh` — refresh the snapshot from live api-docs.
- `INSTALL.md` — publish walkthrough.

## Related

- [`edgepress-cc/claude-code-edgepress`](https://github.com/edgepress-cc/claude-code-edgepress)
- [`edgepress-cc/codex-cli-edgepress`](https://github.com/edgepress-cc/codex-cli-edgepress)
- [`edgepress-cc/openai-sdk-edgepress`](https://github.com/edgepress-cc/openai-sdk-edgepress) — for programmatic OpenAI use, not consumer chat
