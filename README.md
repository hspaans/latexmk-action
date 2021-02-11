# latexmk-action

## Usage

This GitHub Action run latexmk to convert a LaTeX file into a PDF.

### Parameter: format

Indicates the output format.

This parameter is optional; by default it will be `pdf`

### Parameter: filename

Indicates the LaTeX filename to process.

This parameter is optional; by default it will be `main.yml`

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
        uses: hspaans/latexmk-action@v1.0.10
        with:
          format: pdf
          filename: article.tex
```
