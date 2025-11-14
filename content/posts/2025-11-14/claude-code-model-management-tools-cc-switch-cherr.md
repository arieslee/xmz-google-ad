---
title: "Is it too cumbersome to manage and switch models in Claude Code and Codex? One tool can easily get the job done."
disqus_identifier: "claude-code-model-management-tools-cc-switch-cherr"
disqus_url: "https://xiaomizhou.net/2025-11-14/claude-code-model-management-tools-cc-switch-cherr/"
date: 2025-11-14
lastmod: 2025-11-14T13:26:06+08:00
description: "If you want to use these models in Claude Code, the conventional method is to add the following configurations to your environment variables:"
tags: ["Claude Code", "model management", "cc-switch", "Cherry Studio", "Code Agent", "desktop application", "API Key", "model switching", "CLI tools", "configuration"]
author: ["Aries"]
cover:
    image: /images/uploads/cover-1763097966691.png
    hiddenInList: false
keywords:
    - "Claude Code"
    - "model management"
    - "cc-switch"
    - "Cherry Studio"
    - "Code Agent"
    - "desktop application"
    - "API Key"
    - "model switching"
    - "CLI tools"
    - "configuration"
weight: 1
slug: "claude-code-model-management-tools-cc-switch-cherr"
---

If you want to use these models in Claude Code, the conventional method is to add the following configuration to the environment variables:

However, as the number of models increases, management and switching become very cumbersome.

I previously shared Claude Code Router and Claude Code Proxy. Although they can solve this problem, the learning curve is still a bit steep for beginners.

For beginners, I highly recommend cc-switch and Cherry Studio. The former is an open-source desktop application, while the latter introduced the Code Agent feature in version v1.5.7, which is particularly suitable for the current trend of everyone switching to `domestic models + Claude Code / Codex`.

---

**Model Management Tool: cc-switch**

**Project Address:** [https://github.com/farion1231/cc-switch](https://github.com/farion1231/cc-switch)

![CC-switch.png](/images/uploads/editor-1763097477002.png)

This tool is very simple to install. We just need to download the installation package from the cc-switch Releases page according to our device. Windows users should choose `.msi` or `Windows.zip`, and Mac users should choose `macOS.zip`.

For the latter (macOS.zip), the first time you open it, you might see an "unidentified developer" warning. You need to close it, then go to "System Settings" → "Privacy & Security" → click "Open Anyway". After that, you can open it normally.

After successful installation, you will see the following interface (initially only 'default' is present). It currently only supports Claude Code and Codex:

![CC-switch-Successful.png](/images/uploads/editor-1763097520751.png)

(Take Claude Code configuration as an example)
Click "Add Provider" in the upper right corner to open the configuration window. The configuration types include Claude Official, as well as DeepSeek, Zhipu GLM, Qwen-Coder, Kimi-K2, ModelScope, and other configuration types. After switching, you can start configuring. Most only require configuring the API Key and the main model.

After configuration is complete, click the "Enable" button on the right side of the corresponding model to switch models.

After switching the model, restart Claude Code to complete the model switch.

![CC-switch-Provider.png](/images/uploads/editor-1763097582872.png)

It should be noted that after the Claude Code plugin is upgraded to version 2.0, it will prompt you to log in again, and the login methods are only Claude subscription and Anthropic API.

![Claude Code.jpg](/images/uploads/editor-1763097690322.jpg)

But that's okay. Update the cc-switch project to the latest version, and add the following file to the main directory `.claude/config.json` (if the `config.json` file doesn't originally exist, create it in the directory). The "self" for ApiKey here can be replaced with any string.

```bash
{
    "primaryApiKey": "self"
}
```

After adding it, reopen the Claude Code 2.0 plugin, and then you will see the new version of Claude Code, similar to the Cline or Augment interface.

![Claude Code.jpg](/images/uploads/editor-1763097836060.jpg)

---

That's all for today. Thank you for reading this far.