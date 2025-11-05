---
title: "Share a hidden gem of a website for Claude Code: Claude Code Templates"
disqus_identifier: "claude-code-templates"
disqus_url: "https://xiaomizhou.net/2025-11-04/claude-code-templates/"
date: 2025-11-04
lastmod: 2025-11-04T17:10:46+08:00
description: "Hi everyone, I recently found a hidden gem of a project called Claude Code and I want to share it with you all."
tags: ["Claude Code"]
author: ["Aries"]
cover:
    image: /images/uploads/cover-1762247446474.png
    hiddenInList: false
keywords:
    - "Claude Code"
    - "Claude Code Templates"
weight: 1
slug: "claude-code-templates"
---

Claude Code Templates are ready-to-use configurations for Anthropic Claude Code. They offer a comprehensive collection of AI Agents, custom commands, Settings, Hooks, MCP services, and project templates, which can greatly enhance our development workflows.
Official website: [https://www.aitmpl.com/agents](https://www.aitmpl.com/agents)

![PixPin_2025-11-04_16-50-50.png](/images/uploads/editor-1762246261185.png)

Github地址： [https://github.com/davila7/claude-code-templates](https://github.com/davila7/claude-code-templates)

![PixPin_2025-11-04_16-51-36.png](/images/uploads/editor-1762246304556.png)

## Basic Usage
Command-Line Tool
Claude Code Templates provides a CLI (Command-Line Interface) tool, allowing the addition of templates with a single command.
### 1. Interactive Installation
Claude Code Templates supports running tools such as analysis, conversation monitoring, Agents panel, project initialization, and health checks in the form of interactive commands.
```bash
npx claude-code-templates@latest
```
![PixPin_2025-11-04_16-53-39.png](/images/uploads/editor-1762246428643.png)

### 2. Installing Specific Templates
Claude Code Templates supports the installation of specific types of templates, and different types of templates can be installed by specifying the type.
```bash
$ npx claude-code-templates@latest --agent business-marketing/security-auditor
$ npx claude-code-templates@latest --command performance/optimize-bundle
$ npx claude-code-templates@latest --setting performance/mcp-timeouts
$ npx claude-code-templates@latest --hook git/pre-commit-validation
$ npx claude-code-templates@latest --mcp database/postgresql-integration
```

Take the `fullstack-developer` Agent as an example:

```bash
$ npx claude-code-templates@latest --agent=development-team/fullstack-developer --yes
```
![PixPin_2025-11-04_16-55-30.png](/images/uploads/editor-1762246539547.png)

Going back to the project, you'll notice that a` fullstack-developer.md` file has been added to the `./claude/agents/ `directory at this point.

### 3. One-Click Installation
Claude Code Templates also supports one-click installation of multiple types of templates.

```bash
$npx claude-code-templates@latest --agent development-team/frontend-developer --command testing/generate-tests --mcp development/github-integration
```