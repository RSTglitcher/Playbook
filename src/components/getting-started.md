## Local Set Up Preferences

1. Install Kitty to vim ~/.config/kitty/kitty.conf
2. Update for:

```bash
startup_session ~/.config/kitty/startup.conf
font_size 18.0

vim:fileencoding=utf-8:foldmethod=marker
```
2. Create the startup.conf

```bash
###
#Startup Session
###

new_tab Analysis
cd ~/IdeaProjects/Analysis/
launch zsh

new_tab Knowledge
cd ~/IdeaProjects/Playbook/
launch zsh

new_tab Photograph
cd ~/IdeaProjects/Photography/
launch zsh

new_tab Home
cd ~/
launch zsh
```

3. Set up your terminal promt

```bash
PROMPT="%F{green}%1~%f 🌱❯ "
```