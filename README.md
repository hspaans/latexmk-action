# latexmk-action

> [!IMPORTANT]
> The **v1** branch is not activily maintained anymore. Please upgrade to latest **v2**.

## Usage

This GitHub Action run [latexmk](https://github.com/debian-tex/latexmk) to convert a LaTeX file into a PDF.

## Parameters

Following parameters can be used as `step.with` keys:

| Name       | Type   | Default    | Description                          |
| ---------- | ------ | ---------- | ------------------------------------ |
| `format`   | String | `pdf`      | Output format for the LaTeX filename |
| `filename` | String | `main.tex` | Source LaTeX filename to process     |
| `options`  | String |            | Additional options for latexmk       |

## Example

Example workflow to generate a PDF document from a LaTeX file:

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
        uses: hspaans/latexmk-action@v2.1.0
        with:
          format: pdf
          filename: article.tex
          options: -shell-escape
```

Example workflow to generate a PDF document from a LaTeX file `article.tex` with a configuration file `.latexmkrc`:

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
        uses: hspaans/latexmk-action@v2.1.0
        with:
          filename: article.tex
```

## Keep up-to-date with GitHub Dependabot

[GitHub Actions has native support](https://docs.github.com/en/github/administering-a-repository/configuration-options-for-dependency-updates#package-ecosystem) for [Dependabot](https://docs.github.com/en/github/administering-a-repository/keeping-your-actions-up-to-date-with-github-dependabot),
to enable it on your GitHub repository all you need to do is add the `.github/dependabot.yml` file:

```yaml
---
version: 2
updates:
  - package-ecosystem: github-actions
    directory: /
    schedule:
      interval: monthly
```

## Limitation

This action is only available for Linux [virtual environments](https://help.github.com/en/articles/virtual-environments-for-github-actions#supported-virtual-environments-and-hardware-resources).
