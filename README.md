# latex-action

## Example

```yaml
---
name: CI

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:

      - uses: actions/checkout@v2

      - name: Generate PDF document
        uses: hspaans/latexmk-action@v1.0.0
        with:
          filename: article.tex
```
