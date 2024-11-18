export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git kubectl helm tmux docker)
source $ZSH/oh-my-zsh.sh

# User configuration

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
export VISUAL=nvim
export EDITOR="$VISUAL"
alias kc="kubectl"
alias watch="watch --color"
alias http="http --pretty=all"
#alias rdesktop="rdesktop -u labuser -r disk:share=/home/franz.nemeth/Downloads/windows_share $@"
alias vim=nvim
alias ls="eza"

function kmerge {
  mkdir -p ~/.kube/configs
  cp ~/.kube/config ~/.kube/config.kmerge.bak
  KUBECONFIG=$(find ~/.kube/configs -type f | sed ':a;N;s/\n/:/;ba') kubectl config view --merge --flatten > ~/.kube/config
  export KUBECONFIG=~/.kube/config
}

function kubedecode {
  kubectl get secrets $@ -ojson | jq '.data | map_values (@base64d)'
}

export PATH=~/.npm-global/bin:~/go/bin/:$PATH

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit
compinit

