#!/bin/bash
echo "Setting up workspace..."

# 1. Install Python dependencies
pip install -r requirements.txt

# 2. Download the latest stable Continue extension (v1.2.22) directly from GitHub Releases
echo "Downloading the latest Continue extension backup..."
wget -q -nc https://github.com/continuedev/continue/releases/download/v1.2.22-vscode/continue-linux-x64-1.2.22.vsix -O continue-offline.vsix

# 3. Create the Continue.dev configuration directory
mkdir -p ~/.continue

# 4. Inject the configuration file with both models
cat <<EOF > ~/.continue/config.json
{
  "models": [
    {
      "title": "Qwen 3.6 35B (Chat)",
      "provider": "openai",
      "model": "redhataiqwen36-35b-a3b-nvfp4",
      "apiBase": "http://workshop-maas-gateway-data-science-gateway-class.workshop-maas.svc.cluster.local/workshop-maas/redhataiqwen36-35b-a3b-nvfp4/v1",
      "apiKey": "dummy-key",
      "contextLength": 65536,
      "completionOptions": {
        "maxTokens": 8192
      }
    },
    {
      "title": "Granite 8B Code (Chat)",
      "provider": "openai",
      "model": "granite-8b-code-instruct",
      "apiBase": "http://workshop-maas-gateway-data-science-gateway-class.workshop-maas.svc.cluster.local/workshop-maas/granite-8b-code-instruct/v1",
      "apiKey": "dummy-key",
      "contextLength": 4096,
      "completionOptions": {
        "maxTokens": 1024
      }
    }
  ],
  "tabAutocompleteModel": {
    "title": "Granite 8B Autocomplete",
    "provider": "openai",
    "model": "granite-8b-code-instruct",
    "apiBase": "http://workshop-maas-gateway-data-science-gateway-class.workshop-maas.svc.cluster.local/workshop-maas/granite-8b-code-instruct/v1",
    "apiKey": "dummy-key",
    "contextLength": 4096,
    "completionOptions": {
      "maxTokens": 512
    }
  },
  "allowAnonymousTelemetry": false
}
EOF

echo "Workspace setup complete!"
