# latexmk-action

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
        uses: hspaans/latexmk-action@v1.0.2
        with:
          format: pdf
          filename: article.tex
```
