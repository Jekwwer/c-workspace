# Contributing Guidelines

Thank you for considering contributing to **Jekwwer/c-workspace**!
Contributions help me improve and maintain the quality of this project.
Whether you're fixing a bug, proposing new features, or improving documentation, your efforts are greatly appreciated.

## Getting Started

1. **Fork the Repository**:
   Click the "Fork" button on the top-right corner of the repository page to create your copy.

2. **Clone Your Fork**:

   ```bash
   git clone https://github.com/<YOUR_USERNAME>/c-workspace.git
   cd c-workspace
   ```

3. **Set Up Upstream Remote**:
   To keep your fork up-to-date with the original repository:

   ```bash
   git remote add upstream https://github.com/Jekwwer/c-workspace.git
   ```

4. **Install Dependencies** (if applicable):
   Follow the setup instructions in the [`README.md`][README].

## Branching and Versioning

This project employs a trunk-based strategy with **Semantic Release** for automated versioning and changelog generation.

### Branching Strategy

Branch names should follow these conventions:

- **Feature branches:** `feature/<short-description>` (e.g., `feature/add-login`)
- **Bugfix branches:** `bugfix/<short-description>` (e.g., `bugfix/fix-auth-error`)
- **Documentation and Others:**
  Use descriptive prefixes (e.g., `docs/<short-description>` for documentation updates).
- **Pre-release branches:** Use `next`, `beta`, or `alpha` (optional)
- **Main branch:** `main`

### Versioning Strategy

This project adheres to **Semantic Versioning (SemVer)** in the format **`MAJOR.MINOR.PATCH`**:

- **MAJOR:** For large breaking changes that significantly alter the project's behavior or structure.
- **MINOR:** For new, backward-compatible features.
- **PATCH:** For backward-compatible bug fixes.

Semantic Release automatically manages versioning based on commit messages.

### Merging Guidelines

- **Squash (Preferred):**
  Use GitHub’s **Squash and Merge** to keep the commit history clean and focused.
  Ensure the pull request title follows the Conventional Commits format.

- **Rebase (Optional):**
  Use **Rebase and Merge** if commit history is already clean and well-structured.

- **Merge (Exceptions):**
  Use the regular merge option for larger branches with multiple contributors
  when preserving individual commits is necessary.

### Pull Request Guidelines

For detailed pull request guidelines, see [Proposing Changes][PROPOSING_CHANGES].

## Commit Message Conventions

Use the following template for commit messages. It aligns with best practices and the Conventional Commits standard,
providing essential details about changes.

### Template Structure

```plaintext
<type>(<scope>): <description>

<detailed description>

[FILES ADDED]
 - <list of newly added files>

[FILES MODIFIED]
 - <list of updated files>

[FILES REMOVED]
 - <list of removed files>

[DEPENDENCIES ADDED]
 - <list of newly added dependencies>

[DEPENDENCIES UPDATED]
 - <list of updated dependencies>

[DEPENDENCIES REMOVED]
 - <list of removed dependencies>

[FEATURES/CHANGES]
 - <list of new features, updates, or changes>

[TECHNIQUES]
 - <details about methods, tools, or approaches used>

[PURPOSE]
 - <reason for the change or issue being addressed>

[IMPACT]
 - <impact on the project, users, or performance>

[FIXES/CLOSES/RESOLVES]
 - #<list of related issue numbers>

[REFERENCES]
 - <links to documentation, code reviews, or other resources>
```

### Handling Breaking Changes

- **Header Notation:**
  To denote a breaking change, append a `!` to the `<type>` in the commit header. For example, use `feat!:` or `fix!:`.

- **Commit Body:**
  In the commit body (within the `<detailed description>`), include a separate line starting with:

  ```plaintext
  BREAKING CHANGE: <description of breaking changes and necessary adaptations>
  ```

  This line should provide details about the breaking change and any required user adaptations.

### Template Fields

- **`<type>`:** Specifies the type of change. Common types include:
  - `init`: Initial commit.
  - `feat`: A new feature.
  - `fix`: A bug fix.
  - `security`: Security-related changes (e.g., vulnerability fixes, input validation improvements).
  - `deps`: Updates to project dependencies.
  - `docs`: Documentation changes.
  - `style`: Code formatting or styling adjustments that do not affect functionality.
  - `refactor`: Code restructuring without altering functionality.
  - `perf`: Performance improvements.
  - `test`: Adding or updating tests.
  - `chore`: Maintenance tasks such as updating dependencies or build processes.
- **`<scope>`:** _(Optional)_ Specifies the part of the codebase affected.
- **`<description>`:** A concise, imperative summary of the change.
- **`<detailed description>`:** _(Optional)_ A comprehensive explanation of the change.
- **`[FILES ADDED/MODIFIED/REMOVED]`:** Lists the files affected by the commit.
- **`[DEPENDENCIES ADDED/UPDATED/REMOVED]`:** _(if applicable)_ Details any changes to project dependencies.
- **`[FEATURES/CHANGES]`:** Describes new features, updates, or significant changes.
- **`[TECHNIQUES]`:** _(Optional)_ Describes methods, tools, or approaches used.
- **`[PURPOSE]`:** Explains the rationale behind the change.
- **`[IMPACT]`:** Describes the impact on the project, users, or performance.
- **`[FIXES/CLOSES/RESOLVES]`:** _(if applicable)_ References related issues or tasks (e.g., `#123`).
- **`[REFERENCES]`:** _(if applicable)_ Links to documentation, code reviews, or other resources.

### Example Commit Message

```plaintext
feat(auth): add OAuth2 login support

Implemented OAuth2 login functionality, allowing users to authenticate with Google and GitHub.

[FILES ADDED]
 - src/auth/oauth2.js
 - src/auth/oauth2.test.js

[FILES MODIFIED]
 - src/auth/index.js

[DEPENDENCIES ADDED]
 - google-auth-library
 - @octokit/auth

[FEATURES/CHANGES]
 - Added OAuth2 authentication for Google and GitHub.
 - Improved error handling for authentication flows.

[PURPOSE]
 - Enhance security and provide seamless third-party login support.

[IMPACT]
 - Simplifies user authentication and improves overall security.

[FIXES]
 - #123

[REFERENCES]
 - OAuth2 Documentation: https://example.com/oauth2
```

### Example Commit Message with Breaking Change

```plaintext
feat!(auth): overhaul login API for enhanced security

Refactored the authentication system to adopt a more secure and modern approach.
This change deprecates the old login endpoints and introduces a new OAuth2-based mechanism.

BREAKING CHANGE: The previous login endpoints have been removed. Clients must update their integrations
to use the new OAuth2 endpoints as described in the migration guide.

[FILES ADDED]
 - src/auth/oauth2_new.js
 - docs/migration-guide.md

[FILES MODIFIED]
 - src/auth/index.js
 - src/auth/login.js

[DEPENDENCIES ADDED]
 - new-auth-library

[FEATURES/CHANGES]
 - Transitioned to OAuth2 for authentication.
 - Enhanced token management and session handling.

[PURPOSE]
 - Improve overall security and modernize the authentication flow.

[IMPACT]
 - Breaking change: Requires client updates to use the new endpoints.

[FIXES]
 - #124

[REFERENCES]
 - Migration Guide: https://example.com/migration-guide
```

## Dependency and Build Management

### Dependency Handling

- **NPM Dependencies:**
  Managed via `package.json` and `package-lock.json`.

- **PIP Dependencies:**
  Managed via `requirements.txt`.

- **GitHub Actions:**
  Configured per workflow in `.github/workflows/*.yml`,
  facilitating CI/CD pipelines for automated testing and deployment.

- **Dependabot:**
  The `.github/dependabot.yml` file monitors and updates npm, pip, and GitHub Actions dependencies.

### Build Scripts

The project is managed via a `Makefile` with these targets:

- **all:** Build and link the project.
- **clean:** Remove both the object and binary directories.
- **fclean:** Currently an alias for clean; however,
  it can be extended to perform additional cleanup tasks beyond the removal of build directories.
- **re:** Rebuild by executing fclean followed by all.

### Environment Configuration

- **Container Setup:**
  The development container is configured via `.devcontainer/devcontainer.json`,
  which integrates VSCode settings and customizations.
  Additionally, `scripts/setup.sh` is executed as a post-create command to install clang-format-21
  along with npm and pip dependencies.

### Manual Testing

Execute the following scripts (refer to `package.json` for details) to validate code quality:

- **spell:check:** Scans files for typos.
- **clang-format:write:** Auto-formats C code.
- **prettier:check:** Validates formatting for non-C files that Prettier supports.
- **prettier:write:** Auto-formats non-C files that Prettier supports.

### Automated Testing

Automated checks run via pre-commit hooks in both CI and locally:

- They enforce linting and formatting standards before commits.
- In-editor autoformatting is active through VSCode settings in `.devcontainer/devcontainer.json`
  (`formatOnPaste` and `formatOnSave`).

## Proposing Changes

1. **Check for Existing Issues**:
   Before opening a new issue or pull request, see if it’s already discussed in
   [Issues][issues] or [Discussions][discussions].

2. **Create a Branch**:

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make and Test Changes**:
   Keep changes consistent with the repository's [`STYLEGUIDE.md`][STYLEGUIDE].

4. **Commit**:

   ```bash
   git add .
   git commit
   ```

5. **Push Your Branch**:

   ```bash
   git push origin feature/your-feature-name
   ```

6. **Open a Pull Request**:
   - Go to the original repository.
   - Click “Compare & pull request.”
   - Fill out the PR template, referencing relevant issues or discussions.

## Code of Conduct

By contributing, you agree to adhere to the [Code of Conduct][CODE_OF_CONDUCT].
Please read it to understand the expectations for behavior.

## Thank You

Your contributions make **Jekwwer/c-workspace** better.
I value your time and effort—thank you for contributing!

---

This document is based on a template by [Evgenii Shiliaev][evgenii-shiliaev-github], licensed under [CC BY 4.0][jekwwer-markdown-docs-kit-license].
All additional content is licensed under [LICENSE][LICENSE].

[CODE_OF_CONDUCT]: CODE_OF_CONDUCT.md
[LICENSE]: LICENSE
[PROPOSING_CHANGES]: #proposing-changes
[README]: README.md
[STYLEGUIDE]: STYLEGUIDE.md
[discussions]: https://github.com/Jekwwer/c-workspace/discussions
[evgenii-shiliaev-github]: https://github.com/Jekwwer
[issues]: https://github.com/Jekwwer/c-workspace/issues
[jekwwer-markdown-docs-kit-license]: https://github.com/Jekwwer/markdown-docs-kit/blob/main/LICENSE
