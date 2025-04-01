# C Workspace

![GitHub Release](https://img.shields.io/github/v/release/Jekwwer/c-workspace?logo=github&link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fc-workspace%2Freleases%2Flatest)
![GitHub Release Date](https://img.shields.io/github/release-date/Jekwwer/c-workspace?link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fc-workspace%2Freleases%2Flatest)
![GitHub commits since latest release](https://img.shields.io/github/commits-since/Jekwwer/c-workspace/latest?link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fc-workspace%2Freleases%2Flatest)
![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/Jekwwer/c-workspace?logo=librariesdotio&logoColor=%23FFFFFF)
![Issues](https://img.shields.io/github/issues/Jekwwer/c-workspace?logo=github&link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fc-workspace%2Fissues)
![Maintained](https://img.shields.io/maintenance/no/2025)
![GitHub License](https://img.shields.io/github/license/Jekwwer/c-workspace?link=https%3A%2F%2Fgithub.com%2FJekwwer%2Fc-workspace%2Fblob%2Fmain%2FLICENSE)

## Project Overview 🚀

This repository is a robust template for C development.
It comes equipped with tools for code formatting, spell checking, and documentation linting,
as well as a ready-to-use devcontainer, custom VS Code settings, essential repository files,
automated release management, and comprehensive documentation to support effective project management and customization.

## Features ✨

- **Devcontainer:**
  Provides an Ubuntu-based environment with Python and Node support, along with custom VS Code settings and extensions.
- **Formatting:**
  Ensures a consistent code style using clang-format, EditorConfig, markdownlint, and Prettier.
- **Spell Checking:**
  Automatically highlights spelling errors.
- **Pre-commit Hooks:**
  Automates quality checks before each commit.
- **Release Automation:**
  Manages releases automatically.
- **Dependency Updates Automation:**
  Keeps dependencies up-to-date via Dependabot.

## Installation 📦

This setup is designed for **GitHub Codespaces**.
Running locally has **not been tested** and may require additional configuration.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)][open-in-codespaces]

## Usage 🛠️

### Building

Build tasks are automated via a `Makefile`.
Customize these settings as needed for your development workflow. The `Makefile` offers the following targets:

- **all:**
  Builds and links the project.
  To build the project manually, run:

  ```bash
  make
  ```

- **clean:**
  Removes both the object and binary directories.
  To remove build artifacts, run:

  ```bash
  make clean
  ```

- **fclean:**
  Currently an alias for clean; however,
  it can be extended to perform additional cleanup tasks beyond the removal of build directories.
  To perform a full cleanup, run:

  ```bash
  make fclean
  ```

- **re:**
  Rebuilds the project by executing fclean followed by all.
  To rebuild the project, run:

  ```bash
  make re
  ```

### Formatting

Most formatting tasks are automated and enforced using various tools.
Feel free to adjust these settings for your project.
The repository configurations are described in the [`STYLEGUIDE.md`][STYLEGUIDE].

- **Source Files:**
  The project uses clang-format for C code formatting.
  clang-format automatically formats C files in the editor when the following settings are enabled
  (already configured in the devcontainer):

  - `editor.formatOnPaste`: true
  - `editor.formatOnSave`: true
  - `files.autoSave`: onFocusChange

  To format your code manually, run:

  ```bash
  npm run clang-format:write
  ```

- **Prettier-supported Files:**
  Use **Prettier** to format all other files supported by Prettier.

  To apply formatting to your code manually, run:

  ```bash
  npm run format:write
  ```

  For a formatting check without modifying files, run:

  ```bash
  npm run format:check
  ```

### Spell Checking

The task is automated and enforced using various tools.

To run spell checking manually, execute:

```bash
npm run spell:check
```

Adjust the `cspell.json` configuration file if needed.

## Contributing 👥

Contributions are welcome! Please read the [Contributing Guidelines][CONTRIBUTING] and check the [Issues][issues] page.

## License 🛡️

This project is licensed under the [MIT License][LICENSE].

## Contact 📬

For questions, reach out via [evgenii.shiliaev@jekwwer.com][evgenii.shiliaev@jekwwer.com] or open an [issue][issues].

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github],
licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license]. All additional content is licensed under [LICENSE][LICENSE].

[CONTRIBUTING]: CONTRIBUTING.md
[LICENSE]: LICENSE
[evgenii.shiliaev@jekwwer.com]: mailto:evgenii.shiliaev@jekwwer.com
[issues]: https://github.com/Jekwwer/c-workspace/issues
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
[open-in-codespaces]: https://codespaces.new/Jekwwer/c-workspace
