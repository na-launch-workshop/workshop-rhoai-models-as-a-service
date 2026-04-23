# 🤖 Module: AI-Powered Debugging with Models-as-a-Service on OpenShift AI

**Technology Stack:** OpenShift AI · vLLM · Granite 8B · Continue Extension · Python · Java 17

---

## 🎯 Scenario

Use the **Granite 8B** AI model running in-cluster to debug a broken Java HTTP client. A working session looks like this:

```
$ javac BrokenJavaChatAgent.java && java BrokenJavaChatAgent

--- AI Response ---
Status Code: 200
{"choices":[{"message":{"content":"Code flows like stream\nMethods compile, errors clear\nJava brings me peace"}}]}
```

---

## 🔌 Install the Continue Extension

Right-click `continue-offline.vsix` in the file explorer and select **"Install Extension VSIX"**.

Once installed, the Continue icon will appear in the left sidebar — it's already pointed at the Granite model.

---

## 🐍 Start the Terminal Chatbot

```bash
python terminal_chatbot.py
```

Try a few prompts:

```
You: Explain what a REST API is in one sentence
You: Write a Python function that reverses a string
You: What's the difference between GET and POST?
You: What does HTTP status code 405 mean?
You: Why would a Java program fail SSL certificate validation?
You: What is the OpenAI chat completions API endpoint?
```

Press `Ctrl+C` to exit.

---

## ☕ Java Debugging Exercise

`BrokenJavaChatAgent.java` has **7 intentional bugs**. Compile and run it, then use the Continue extension or the Terminal Chatbot to diagnose each error — one at a time.

```bash
javac BrokenJavaChatAgent.java && java BrokenJavaChatAgent
```

Paste errors into Continue like this:

```
I'm getting this error:
[paste error here]

Here's the relevant code:
[paste 5-10 lines]

What's wrong and how do I fix it?
```

Fix, recompile, repeat until you get a `Status Code: 200`.

---

## 💬 Using Continue

- **Open chat** — click the Continue icon in the sidebar
- **Reference a file** — type `@BrokenJavaChatAgent.java` in your prompt
- **Ask about selected code** — highlight lines, right-click → **"Continue: Ask about selection"**
- **Reset context** — click **New Chat** between bugs to avoid hitting token limits
