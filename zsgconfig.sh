# Alias
# --------- ZSH
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias zshupdate="omz update"
# --------- VIM
alias vimconfig="vim ~/.vimrc"
# --------- NEOFETCH
alias neoconfig="vim ~/.config/neofetch/config.conf"
# --------- SSH
alias sshpub="cat ~/.ssh/id_rsa.pub"
# --------- SASS
alias sasscompiler="sass --watch sass:css"
# --------- NODE
alias nodeclear="rm -rf node_modules"
# --------- NPM
alias npmroot="npm root -g"
alias gitConfig="git config --list"
# --------- XCODE
alias xcodeW='open -a "/Applications/Xcode.app" *.xcworkspace'
alias xcodeP='open -a "/Applications/Xcode.app" *.xcodeproj'

# Home brew
export PATH="/opt/homebrew/bin:$PATH"

# Docker
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Starship
eval "$(starship init zsh)"

# Muestra estadisticas al ejecutar la terminal por primera vez
# neofetch