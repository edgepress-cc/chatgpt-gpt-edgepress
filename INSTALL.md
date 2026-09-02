# Publish the EdgePress Custom GPT

Requires a ChatGPT Plus / Team / Enterprise account (Custom GPT builder access).

## 1. Mint a token

Log in to your EdgePress admin at `https://<your-tenant>.edgepress.cc/admin/account/api-tokens`. Create a token, copy it (starts with `epat_`).

## 2. Refresh the OpenAPI snapshot

```
./scripts/sync-openapi.sh
```

Writes `openapi.snapshot.json` from `https://api-docs.edgepress.cc/openapi.json`.

## 3. Open the GPT builder

Go to https://chatgpt.com/gpts/editor, click "Create".

## 4. Configure — Configure tab

- **Name:** `EdgePress — <your-tenant>`
- **Description:** `Publish and manage <your-tenant>.edgepress.cc content in plain English.`
- **Instructions:** paste the entire contents of `instructions.md`.
- **Conversation starters:**
  - "List my recent posts"
  - "Draft a post about ..."
  - "What settings can I change?"
- **Knowledge:** none.
- **Capabilities:** disable Web Search, DALL·E, Code Interpreter (this GPT doesn't need them).
- **Actions → Create new action:**
  - **Authentication:** API Key → Bearer → paste your `epat_...` token.
  - **Schema:** paste the contents of `openapi.snapshot.json`.
  - **Privacy policy:** `https://edgepress.cc/privacy` (or your own).
  - **Base URL** (if the OpenAPI spec has `servers: []`): edit to `https://<your-tenant>.edgepress.cc/api/v1`.

## 5. Test

In the preview pane on the right, ask: **"List my last 3 posts."**

Expected: GPT invokes `GET /posts?limit=3`, ChatGPT shows an "Allowed" consent for the action once, then returns 3 titles.

## 6. Publish

Save → set visibility (Only me / Anyone with link / GPT Store).

## 7. When the API changes

Re-run `./scripts/sync-openapi.sh`, open the GPT editor, replace the Action schema.
