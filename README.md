# vpm-repos-gen action

Generate vpm package list.

## Example

```yaml
name: generate

on:
  push:

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v5
      - name: Generate repos.json
        uses: koyashiro/vpm-repos-gen-action@v0.1.0
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          name: koyashiro
          id: net.koyashiro.vpm
          url: https://vpm.koyashiro.net/repos.json
          author: koyashiro
          repos: |
            koyashiro/udon-list
            koyashiro/udon-dictionary
            koyashiro/udon-json
          output: repos.json
```

## Inputs

| Name      | Required | Default        | Description                         |
| --------- | -------- | -------------- | ----------------------------------- |
| `version` |          | `"latest"`     | vpm-repos-gen version.              |
| `name`    |          | `""`           | `name` field of vpm package list.   |
| `id`      |          | `""`           | `id` field of vpm package list.     |
| `url`     |          | `""`           | `url` field of vpm package list.    |
| `author`  |          | `""`           | `author` field of vpm package list. |
| `repos`   |          | `""`           | `repos` field of vpm package list.  |
| `output`  |          | `"repos.json"` | output path of vpm package list.    |
