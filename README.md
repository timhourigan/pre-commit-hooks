# Pre Commit Hooks

Git, client-side, pre-commit hooks, to be used with the [pre-commit](pre-commit.com) framework.

## Hooks

| Hook                                                                         | Stage(s) |
|:-----------------------------------------------------------------------------|:---------|
| [black](https://github.com/psf/black) - Python formatter                     | commit   |
| [flake8](https://flake8.pycqa.org/en/latest/) - Python style checker         | commit   |
| [isort](https://pycqa.github.io/isort/) - Python import sorter               | commit   |
| [shellcheck](https://github.com/koalaman/shellcheck) - Shell script analyser | commit   |
| [yamllint](https://github.com/adrienverge/yamllint) - YAML linter            | commit   |

## Usage

* Ensure `pre-commit` is installed (`python -m pip install --user pre-commit` or via [pipx](https://github.com/pipxproject/pipx))
* Create a `.pre-commit-config.yaml` file at the root of the repository and specify the hooks to use. Example:

```yaml
---
repos:
  - repo: https://github.com/timhourigan/pre-commit-hooks
    rev: 0.2.0
    hooks:
      - id: black
        stages: [commit]
      - id: flake8
        stages: [commit]
        # Optional/Example - Specify configuration file
        args: [--config=setup.cfg]
      - id: isort
        stages: [commit]
        # Optional/Example - Specify configuration file
        args: [--settings-file=setup.cfg]        
        # Example - Pin to a specific version
        # additional_dependencies: [isort==5.7.0]
      - id: shellcheck
        stages: [commit]
        # Example - Exclude/ignore a specific error
        # args: [--exclude, SC1000]
      - id: yamllint
        stages: [commit]
        # Optional/Example - Specify configuration file
        args: [--config-file=.yamllint]
```

* Install the hook type in git (`pre-commit` for `commit` stages) and the hooks

```shell
# From the root of the repository
$ pre-commit install -t pre-commit --install-hooks
```
