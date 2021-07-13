# latexmk-action

## Usage

This GitHub Action run latexmk to convert a LaTeX file into a PDF.

## Parameters

Following parameters can be used as `step.with` keys:

| Name       | Type   | Default    | Description                          |
| ---------- | ------ | ---------- | ------------------------------------ |
| `formay`   | String | `pdf`      | Output format for the LaTeX filename |
| `filename` | String | `main.tex` | Source LaTeX filename to process     |

## Example

```yaml
---
name: CI

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2

      - name: Generate PDF document
        uses: hspaans/latexmk-action@v1.0.14
        with:
          format: pdf
          filename: article.tex
```

## Keep up-to-date with GitHub Dependabot

[GitHub Actions has native support](https://docs.github.com/en/github/administering-a-repository/configuration-options-for-dependency-updates#package-ecosystem) for [Dependabot](https://docs.github.com/en/github/administering-a-repository/keeping-your-actions-up-to-date-with-github-dependabot),
to enable it on your GitHub repo all you need to do is add the `.github/dependabot.yml` file:

```yaml
---
version: 2
updates:
  - package-ecosystem: github-actions
    directory: /
    schedule:
      interval: daily
```

## Limitation

This action is only available for Linux [virtual environments](https://help.github.com/en/articles/virtual-environments-for-github-actions#supported-virtual-environments-and-hardware-resources).
