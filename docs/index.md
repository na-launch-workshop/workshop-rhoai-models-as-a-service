# 🤖 AI Coding Assistant: Workshop Prompt Cheat Sheet

Welcome to the prompt testing lab! In your IDE, use the Continue chat panel to tag specific files in this repository (type `@` followed by the filename) and ask the AI these questions to see how it handles real-world developer tasks.

## 1. Code Explanation (Understand the Repo)
* `@terminal_chatbot.py` - *"Explain how the main chat loop works in this file. How does it wait for user input?"*
* `@setup.sh` - *"Explain what this bash script is doing step-by-step. What environment variables or installations is it configuring?"*
* `@devfile.yaml` - *"What is a devfile used for, and what specific environment is this one spinning up?"*

## 2. Refactoring & Enhancements (Write New Code)
* `@terminal_chatbot.py` - *"Add a new feature to this script that automatically saves the entire chat history to a local `chat_log.txt` file when the user exits."*
* `@terminal_chatbot.py` - *"Refactor this code to add colorized terminal output (e.g., make the user's text green and the bot's text blue)."*
* `@setup.sh` - *"Rewrite this bash script to include a check that ensures Python 3 is installed before it tries to run the rest of the commands."*

## 3. Debugging & Security (Find the Flaws)
* `@requirements.txt` - *"Explain what these dependencies are used for. Are there any known security best practices I should keep in mind when using them?"*
* `@terminal_chatbot.py` - *"What happens if the API endpoint or model connection fails? Write a `try/except` block to gracefully handle connection errors so the script doesn't crash."*
* `@catalog-info.yaml` - *"Check this YAML file for any syntax errors or missing required fields based on standard Backstage/Developer Portal formatting."*

## 4. Documentation & Testing
* `@terminal_chatbot.py` - *"Generate professional Python docstrings for every function in this file."*
* `@terminal_chatbot.py` - *"Write a simple `pytest` unit test for this file to mock the API response and ensure the chatbot logic processes the text correctly."*
