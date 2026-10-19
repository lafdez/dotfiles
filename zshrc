export PATH=$HOME/.cargo/bin:$HOME/.config/emacs/bin:$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.krew/bin:/usr/local/bin/istio-1.10.0/bin:$PATH
export ZSH="/home/la/.oh-my-zsh"
ZSH_THEME="rkj-repos-custom"

plugins=(gnu-utils colored-man-pages git zsh-kubectl-prompt zsh-syntax-highlighting zsh-autosuggestions kubectl docker virtualenv tmux systemd python kubecolor-zsh virtualenv fzf)

source $ZSH/oh-my-zsh.sh

# eval "$(starship init zsh)"

bindkey "^[[3~" delete-char

#alias monitores='xrandr --output DVI-I-1 --mode 1920x1200 --pos 1280x0 --rotate normal --output VGA-0 --mode 1280x1024 --pos 0x0 --rotate normal'
#alias monitores='xrandr --output DP-0 --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-0 --mode 1920x1200 --pos 0x0 --rotate normal'
alias monitores='xrandr --output DP-2 --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-1 --mode 1920x1200 --pos 0x0 --rotate normal'
alias fondo="systemd-run --user --on-calendar '*:0/15' /bin/sh -c 'feh -z -r --bg-fill /home/la/Imágenes/Fondos/ --bg-fill /home/la/Imágenes/Fondos/'"
alias teclas='xmodmap -e "remove Mod4 = Super_R" && xmodmap -e "keycode 197 = F19" && xmodmap -e "add Mod3 = Super_R"'
alias teclafn='echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode'
alias mayormenorque='echo 0 | sudo tee /sys/module/hid_apple/parameters/iso_layout'
alias vi3b="vim ~/.config/i3blocks/config"
alias vi3="vim ~/.config/i3/config"
alias vi3b2o="vim ~/.config/i3blocks/config_2oMonitor"
alias tzanzabornin="curl wttr.in/zanzabornin"
alias gitlog="git log --all --decorate --oneline --graph"
alias correo_zzsoft='neomutt -F ~/.mutt/muttrc_ZZSoft'
alias correo_gmail_laffdez='neomutt -F ~/.mutt/muttrc_GMail_laffdez'
alias correo_gmail_luis.angel.fernandez.fernandez='neomutt -F ~/.mutt/muttrc_GMail_luis.angel.fernandez.fernandez'

alias t10mem='ps -eo uname,pid,ppid,pcpu,pmem,start_time,time,comm --sort -%mem | head -n10'
alias t10cpu='ps -eo uname,pid,ppid,pcpu,pmem,start_time,time,comm --sort -%cpu | head -n10'


function loremipsum () {
  if [ "${1}" = "" ] || [ "${2}" = "" ]; then
    echo "Usage: loremipsum [paragraphs, sentences] [integer]"
  else
    curl -s http://metaphorpsum.com/"${1}"/"${2}" && printf "\n"
  fi
}

function cot() {
  curl rate.sx/xmr/$1
}

function cht() {
  curl cht.sh/$1
}

alias ls=lsd
alias zdir="zoxide query -l | fzf --preview 'lsd -la {}' --layout=reverse --bind 'enter:execute(lsd -la {})'"
alias zd=zoxide
alias instalados="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias kn="kubectl neat"
alias docker="sudo nerdctl"
alias ppass="PASSWORD_STORE_DIR=/home/la/Documentos/almacen_contraseñas_personales pass"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export JDK_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/home/la/.linkerd2/bin:$HOME/.config/emacs/bin:$PATH"
export KUBECONFIG=$HOME/.kube/config
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/k0s-sys.yaml
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/k0s-argocd.yaml
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/k0s-cubito.yaml
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/k0s-rpi.yaml

export EDITOR=nvim
export PASSWORD_STORE_DIR=/home/la/Documentos/almacen_contraseñas
export PAGER=bat
export BROWSER=brave

export ANSIBLE_NOCOWS=1

export LBC_VERSION="v2.3.0"

export PROMPT_EOL_MARK=''

source /home/la/.config/broot/launcher/bash/br

autoload bashcompinit && bashcompinit
complete -C '/usr/bin/aws_completer' aws

export ZEIT_DB=~/.config/zeit/db.json

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/la/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/home/la/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/la/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/la/bin/google-cloud-sdk/completion.zsh.inc'; fi

if [ -f '/usr/share/bash-completion/completions/az' ]; then
  autoload -U +X bashcompinit && bashcompinit
  source /usr/share/bash-completion/completions/az
fi

if [ -f '/home/la/.config/zeit/zsh-completions.sh' ]; then
  source /home/la/.config/zeit/zsh-completions.sh
fi

eval "$(zoxide init zsh)"
