# ***plain specification language examples

## Quick start

This repository includes the examples demonstrating [***plain specification language](https://www.plainlang.org/) on different use cases and using different implementation technologies.

List of examples:

```text
hello-world/
  golang/
  python/
  react/
task-manager/
  react/
```

Please see `README` files in respective folders for details on how the examples should be rendered and run.

## Prerequisites

Examples require that `codeplain` client is installed. You can check if you have the client installed using the command:

```bash
codeplain
```

If you get `command not found` or similar error, you can install the `codeplain` client using the following command:

```bash
curl -fsSL https://codeplain.ai/install.sh | bash
```

After the `codeplain` client is successfully installed, you can render ***plain specification files to software code using the command:

```bash
codeplain name_of_specs_file.plain
```

## Additional Resources

### Documentation

- For more details on the ***plain format, see the [***plain language specification](https://github.com/Codeplain-ai/codeplain/blob/main/docs/plain_language_specification.md).
- For step-by-step instructions for creating your first ***plain project see the [Kickstart your ***plain project](https://github.com/Codeplain-ai/codeplain/blob/main/docs/starting_a_plain_project_from_scratch.md).
- For complete CLI documentation and usage examples, see [plain2code CLI documentation](https://github.com/Codeplain-ai/codeplain/blob/main/docs/plain2code_cli.md).

### Configuration file

Examples include a `config.yaml` file that is used to provide per-project (per example) configuration for the `codeplain` CLI. `config.yaml` can include all CLI parameters, so you can keep example-specific flags/settings versioned with the project.

### Scripts

Folder `scripts` contains scripts used by *codeplain platform to run unit and conformance tests against these examples.