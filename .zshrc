# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bertho/.oh-my-zsh"
export HADOOP_HOME="/opt/hadoop-3.2.1"
export PATH="$PATH:$HADOOP_HOME/bin"
export PATH=$PATH:/home/bertho/go/bin
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="lukerandall"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    dotenv
    zsh-autosuggestions
    zsh-syntax-highlighting
    golang
)

source $ZSH/oh-my-zsh.sh
function goo() {
        google-chrome google.com/search?q="$*" > /dev/null 2>&1 &
        disown
}
function cyberfisico() {
        packettracer > /dev/null 2>&1 &
        disown
}

function figma() {
        figma-linux > /dev/null 2>&1 &
        disown
}


function fire() {
        firefox google.com/search?q="$*" > /dev/null 2>&1 &
        disown
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias dockerup='docker-compose up -d'
alias dockerdown='docker-compose down'
alias dockerps='docker-compose ps'

alias flix='cd /home/bertho/Documents/personal_projects/MYP_PROJECTS/MYP.Authentication'

alias google="nohup google-chrome > /dev/null 2>&1 & disown"
alias ff='nohup firefox & 2> /dev/null $ disown; exit;'

alias kazen_bot='/home/bertho/Music/ngrok http https://localhost:9001 -host-header=localhost:9001'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gall='git add .'

alias example='f() { echo Your arg was $1. };f'

alias exsubmit='f() { exercism submit $1 };f'

alias monitor_default='xrandr --output eDP-1-1 --primary'
alias monitor_first='xrandr --output HDMI-1-1 --primary'

alias pizzaria='psql -h localhost -U bertho -d pizzaria'
alias myp='psql -h localhost -U bertho -d myp'
alias test='psql -h localhost -U bertho -d test'
source /home/bertho/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
