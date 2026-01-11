#!/bin/bash

# Execute git commands
git fetch
git pull

# Execute npm commands
cd my_notes
npm install
npm --version
npm run docusaurus start -- --port 3001