autoload -Uz compinit && compinit

function loadFileIfExist {
    echo $1
    if [ -f $1 ]; then
        . $1
    fi
}

loadFileIfExist ~/.aliases
loadFileIfExist ~/.localrc

# Prompt color
PROMPT='%B%F{green}%n@%m %1~ %#%f%b'