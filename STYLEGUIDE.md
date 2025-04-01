# Style Guide

This document outlines the style guide for **Jekwwer/c-workspace**.
It covers commit message formatting, coding conventions, repository structure,
and other aspects detailed in [Scope][SCOPE].
Adhering to these guidelines ensures a consistent and readable project.

## Introduction

### Purpose

This guide standardizes coding and documentation practices to ensure consistency, enhance readability,
and support effective collaboration.

### Audience

This style guide is intended for:

- **Developers and Contributors:** Those writing code or documentation for the project.
- **Maintainers:** Individuals responsible for reviewing and merging contributions.
- **Reviewers:** Participants in code reviews to ensure adherence to standards.

### Scope

This document covers:

- **Repository Structure:** Directory layout, file naming conventions, and configuration file details.
- **Naming Conventions:** Standards for variables, constants, functions, and file/directory names.
- **Code Formatting and Style:** Guidelines on indentation, line length, brace styles, comments, EditorConfig settings,
  and linting/formatting tools.
- **Documentation:** Standards for creating and maintaining project documentation.
- **Additional Best Practices:** Other practices to improve overall code quality and project maintainability.

## Project Overview

### Project Goals

This repository provides a ready-to-use development environment for C,
leveraging devcontainer technology and GitHub Codespaces with VS Code.

### Technology Stack

Uses VS Code configurations, a devcontainer setup, essential extensions and configuration files.

### Target Audience

Developers who need a streamlined workspace template for C development.

## Repository Structure

### Directory Layout

```plaintext
/ (root)                                # repository root
├── .devcontainer                       ├── # devcontainer-related configurations
│   └── devcontainer.json               │   └── # devcontainer setup
├── .github                             ├── # GitHub-related configurations
│   ├── ISSUE_TEMPLATE                  │   ├── # issue templates
│   │   └── *                           │   │   └── # all files in the folder
│   ├── PULL_REQUEST_TEMPLATE           │   ├── # pull request templates
│   │   └── *                           │   │   └── # all files in the folder
│   ├── workflows                       │   ├── # GitHub workflows
│   │   └── release.yml                 │   │   └── # release workflow
│   ├── dependabot.yml                  │   ├── # Dependabot configuration
│   ├── FUNDING.yml                     │   ├── # funding configuration
│   └── PULL_REQUEST_TEMPLATE.md        │   ├── # default pull request template
├── scripts                             ├── # utility scripts
│   └── start.sh                        │   └── # script to install dependencies for the development environment
├── src                                 ├── # source files
│   └── hello_world.c                   │   └── # sample C file for demonstration
├── .clang-format                       ├── # clang-format configuration
├── .editorconfig                       ├── # editor configuration
├── .gitignore                          ├── # files to ignore in Git
├── .markdownlint.json                  ├── # markdown linting configuration
├── .pre-commit-config.yaml             ├── # pre-commit hook configuration
├── .prettierrc                         ├── # Prettier configuration
├── .releaserc.js                       ├── # semantic release configuration
├── CHANGELOG.md                        ├── # changelog
├── CODE_OF_CONDUCT.md                  ├── # code of conduct
├── CONTRIBUTING.md                     ├── # contributing guidelines
├── cspell.json                         ├── # spell checking configuration
├── LICENSE                             ├── # main license (e.g., MIT)
├── package-lock.json                   ├── # npm lock file
├── package.json                        ├── # npm package configuration
├── README.md                           ├── # project README
├── requirements.txt                    ├── # pip dependencies
├── SECURITY.md                         ├── # security information
├── STYLEGUIDE.md                       └── # style guide
```

### File Naming Conventions

- **Documentation Files:**
  Key documentation files (e.g., `CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`, `README.md`, `SECURITY.md`)
  are named using **SCREAMING_SNAKE_CASE**.

- **Configuration Files:**
  Tool configuration files (e.g., `cspell.json`, `.editorconfig`, `.pre-commit-config.yaml`, `.prettierrc`)
  use **lowercase** naming, following each tool's specific requirements.

- **Shell Files:**
  Use **snake_case** for executable scripts.

- **C Files:**
  Use **snake_case** for both source (`.c`) and header (`.h`) files.

- **GitHub and Workflow Files:**
  Files within the `.github` directory—such as `dependabot.yml`, `FUNDING.yml`,
  and templates under `ISSUE_TEMPLATE`/`PULL_REQUEST_TEMPLATE` follow GitHub's naming conventions.
  This may include a mix of uppercase (e.g., `BUG_REPORT.md`) and lowercase (e.g., `config.yml`) filenames
  to ensure proper GitHub integration.
  In the `.github/workflows/` directory, YAML files for GitHub Actions are recommended to use kebab-case
  (e.g., `deploy-app.yml`, `run-tests.yml`), aligning with GitHub's documentation and best practices.

### Directory Naming Conventions

- **General Naming:**
  Use lowercase letters for directory names. For multi-word names, use **kebab-case**
  (e.g., `node-modules`, `source-files`). Choose names that clearly indicate the directory's content or purpose
  (e.g., `docs` for documentation, `assets` for media).

- **Special Directories:**
  Directories prefixed with a dot (e.g., `.github`, `.devcontainer`) have specific roles and should remain unchanged.

### Configuration Files

Key configuration files in the repository:

- `.devcontainer/devcontainer.json`: Development container setup, including VS Code settings,
  environment variables, and extensions.
- `.clang-format`: Formatting rules for C files.
- `.editorconfig`: Coding style settings across different editors.
- `.gitignore`: Files and directories excluded from version control.
- `.markdownlint.json`: Markdown linting rules and exclusions.
- `.pre-commit-config.yaml`: Pre-commit hooks.
- `.prettierrc`: Formatting rules for Prettier-supported files.
- `.releaserc.js`: Semantic release process and versioning.
- `cspell.json`: Spelling rules for consistency.
- `Makefile`: Project build configuration.
- `package.json`: Project metadata, scripts, and dependency definitions.
- `package-lock.json`: Locked dependency versions for consistent installations.
- `requirements.txt`: PIP dependencies.

## Naming Conventions

### Variables

- **C:**
  Use **snake_case** (e.g., `current_count`, `user_input`).
  Choose descriptive, concise names and avoid unnecessary abbreviations.

### Constants

- **C:**
  Define constants using macros or enumerations.
  Use **SCREAMING_SNAKE_CASE** (e.g., `MAX_BUFFER_SIZE`) to clearly denote immutability.

### Functions

- **C:**
  Use **snake_case** (e.g., `initialize_system()`, `compute_average()`).

### Types/Structures

- **C:**
  Use **PascalCase** (e.g., `UserProfile`, `DeviceConfig`) to distinguish type names from variables and functions.

### Files

See [File Naming Conventions][FILE_NAMING_CONVENTIONS].

## Code Formatting and Style

The project adheres to the rules specified in the `.clang-format`, `.editorconfig`, `.markdownlint.json`,
and `.prettierrc` configuration files.

### Indentation and Spacing

- **General Guidelines:**
  Use **2 spaces** per indentation level throughout the project. Tabs are allowed only for `Makefile`.
  _(Enforced by EditorConfig)_
- **C:**
  Use **4 spaces** per indentation level for C files.
  _(Enforced by EditorConfig)_

### Line Length

- **Code Files:**
  Limit lines to **88 characters**.
  _(Enforced by Prettier for supported files and yamllint pre-commit hook for `.yaml`/`.yml` files)_
- **Markdown:**
  Allow up to **120 characters** per line.
  _(Enforced by Prettier and markdownlint pre-commit)_

### Braces and Control Structures

Following a variant of [Microsoft][microsoft-style-guide] style with a focus on clarity:

- **Opening Braces:**
  Always place opening braces on new lines following control statements and function headers.

- **Always Use Braces:**
  Enclose all control statement bodies with braces — even for single-line blocks — to prevent ambiguity
  and potential errors.

Both are _enforced by clang-format_.

### Comments and Documentation

- **General Guidance:**
  All comments should enhance clarity and avoid redundancy with well-named functions and variables.
  Ensure comments do not exceed the maximum line length.
- **Inline Comments:**
  Place concise inline comments on the same line or immediately above the code they describe.
- **Block Comments:**
  Use block comments for extended explanations.
- **File Header Comments:**
  Every file should begin with a header comment (except for files in `.json`, `.md`, and `LICENSE`)
  that provides a short, third-person description of the file's purpose. For example:

  ```plaintext
  # .pre-commit-config.yaml: Sets up pre-commit hooks to automate code quality checks.
  ```

If a file starts with a shebang (e.g., `#!/bin/bash`),
place the header comment on the line immediately following the shebang.

### EditorConfig

- **Purpose:**
  The `.editorconfig` file ensures consistent coding styles across all editors by specifying:
  - **Indentation:** 2 spaces (4 spaces for C files; tab-indented with 2-space width for `Makefile`)
  - **Line Endings:** Unix-style (`lf`)
  - **Charset:** UTF-8
  - **Max Line Length:** 88 for code, 120 for Markdown
    _(Note: `.editorconfig` provides these values for reference; enforcement is handled by other tools.)_
  - **Final Newline:** Enforced
  - **Trailing Whitespace:** Trimmed (with specified exceptions)
- **Note:**
  Contributors should use an editor that supports EditorConfig to automatically apply these settings.

### Prettier

- **Purpose:**
  The `.prettierrc` file defines the project's code formatting rules for Prettier-supported files,
  ensuring a consistent style across various file types by specifying:
  - **Semicolons:** Enabled
  - **Quote Style:** Single quotes preferred
  - **Trailing Commas:** Added where possible
  - **Tab Width:** 2 spaces (tabs are not used)
  - **End of Line:** Unix-style (`lf`)
  - **Print Width:** 88 characters
    _(Note: Overrides are applied for Markdown files with a print width of 120, while JSON files have no enforced limit.)_
- **Note:**
  Prettier is integrated as an auto-formatter in VS Code and runs as part of a pre-commit hook
  to automatically format code before commits.

### Additional Linting and Formatting Tools

- **clang-format:**
  Runs with the `BasedOnStyle: Microsoft` [config][microsoft-style-guide],
  integrated as an auto-formatter in VS Code and via pre-commit hooks to automatically format C code before commits.
- **Pre-commit Hooks:**
  The project leverages pre-commit hooks to enforce code quality through automated checks.
  Key tools integrated via pre-commit include:
  - **pre-commit-hooks:**
    Ensures proper AST parsing, fixes line endings and trailing whitespace, manages mixed line endings,
    detects private keys, validates YAML and JSON syntax, checks for merge conflicts, detects case conflicts,
    verifies executable shebangs, fixes formatting, and sorts `requirements.txt`.
  - **markdownlint-cli and markdown-link-check:**
    Enforce the style guide rules for Markdown files and validate links.
  - **yamllint:**
    Enforces style guide rules for YAML files.

## Documentation

### Inline Documentation

See [Comments and Documentation][COMMENTS-AND-DOCUMENTATION].

### External Documentation

- **Repository Documentation:**
  The root-level `README.md` offers an overview of the project and a preview of its appearance on the profile.
  Additional key documents such as `CONTRIBUTING.md`, `STYLEGUIDE.md`, `SECURITY.md`,
  and `LICENSE` are also maintained at the repository root.

_Note: File and directory names referenced in Markdown should always be formatted using backticks, for example:_

```markdown
The `.clang-format` file defines the project's code formatting rules for C files.
```

### Markdown References

- **Reference-Style Links:**
  Use reference-style links for clarity. For example:

  ```markdown
  [info][link]

  [link]: https://example.com
  ```

- **Local References:**
  For links to repository-related documents (e.g., `CONTRIBUTING.md` or `CODE_OF_CONDUCT.md`) or internal sections,
  use **SCREAMING_SNAKE_CASE** for link identifiers and omit the file extension for documents.
  For example:

  ```markdown
  See [Code of Conduct][CODE_OF_CONDUCT].

  [CODE_OF_CONDUCT]: CODE_OF_CONDUCT.md
  ```

  And for internal sections:

  ```markdown
  See [File Naming Conventions][FILE_NAMING_CONVENTIONS].

  [FILE_NAMING_CONVENTIONS]: #file-naming-conventions
  ```

  **Note:** Local references should always appear at the top and be sorted alphabetically. For example:

  ```markdown
  [FILE_NAMING_CONVENTIONS]: #file-naming-conventions
  [SECURITY]: SECURITY.md
  [external-link]: https://example.com
  ```

- **External Links:**
  For links that reference external resources, use **kebab-case** for link identifiers. For example:

  ```markdown
  [info][external-link]

  [external-link]: https://example.com
  ```

  **Note:** External references should be sorted alphabetically and always appear below local references. For example:

  ```markdown
  [SECURITY]: SECURITY.md
  [external-link]: https://example.com
  ```

### Documentation Tools and Best Practices

#### Tools

- **cspell:**
  A spellchecker tailored for code and Markdown files.
  It runs as a pre-commit hook and can also be executed via the npm script `npm run spell:check`.

- **markdown-link-check:**
  Validates hyperlinks within Markdown files and runs as a pre-commit hook.

- **markdownlint:**
  Enforces consistent style and formatting in Markdown documents. It runs as a pre-commit hook.

#### Consistency and Updates

- Update documentation alongside code changes.
- Contributors should update docs when introducing new features or modifying existing functionality.

#### Style and Tone

- Maintain a semi-formal tone appropriate for a tech-oriented audience.
- Use clear, precise language and consistent formatting throughout.

#### Contribution Guidelines

- Documentation contributions follow the same process as code changes—submit pull requests for review
  according to the contribution guidelines.

## Additional Best Practices

### Security and Privacy

- Avoid exposing sensitive information in logs or error messages.
- Regularly review dependencies for security vulnerabilities.

### Error Handling and Logging

- Implement robust error handling to manage unexpected issues gracefully.
- Use structured logging to capture context without exposing sensitive data.

### Code Organization and Maintenance

- Keep the codebase clean and modular to facilitate understanding and future extensions.
- Regularly review and refactor code to eliminate redundancy.
- Use design patterns where appropriate to improve clarity and reusability.

## Conclusion

### Continuous Improvement

This document is a living resource that should evolve with the project.
As new best practices emerge or project requirements change, please update the guide to keep it relevant and effective.

### Feedback and Updates

Your input is valuable. If you have suggestions for improvements, clarifications, or additional guidelines,
please reach out to the maintainers or submit an [issue][issues]. For contributing guidelines,
refer to [`CONTRIBUTING.md`][CONTRIBUTING]; for security concerns, see [`SECURITY.md`][SECURITY];
for discussions, consult the project's [discussion board][discussions]
or contact the project owner at [evgenii.shiliaev@jekwwer.com][evgenii.shiliaev@jekwwer.com].

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github],
licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license]. All additional content is licensed under [LICENSE][LICENSE].

[COMMENTS-AND-DOCUMENTATION]: #comments-and-documentation
[CONTRIBUTING]: CONTRIBUTING.md
[FILE_NAMING_CONVENTIONS]: #file-naming-conventions
[LICENSE]: LICENSE
[SCOPE]: #scope
[SECURITY]: SECURITY.md
[discussions]: https://github.com/Jekwwer/c-workspace/discussions
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[issues]: https://github.com/Jekwwer/c-workspace/issues
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
[evgenii.shiliaev@jekwwer.com]: mailto:evgenii.shiliaev@jekwwer.com
[microsoft-style-guide]: https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/code-style-rule-options
