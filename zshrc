ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# ZSH_THEME="robbyrussel"
# ZSH_THEME="agnoster"
ZSH_THEME="cobalt2"
# ZSH_THEME="random"

# Add ruby version on prompt (float right)
if [ -x "$(command -v rbenv)" ]; then RPS1='[$(ruby_prompt_info)]$EPS1'; fi

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search docker)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
export PATH="/usr/local/opt/openssl/bin:$PATH"

unsetopt LIST_BEEP

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/micha/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/micha/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/micha/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/micha/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# force load profile, esp. for php version :
. ~/.bash_profile

# custom function to have cd and ls -l
function cdll {
  builtin cd "$@" && ls -Al
}

export MATLABROOT='/Applications/MATLAB_R2018b.app'

# custom function to launch matlab
function matlab {
  $MATLABROOT/bin/matlab
}


# adding webpack path
export PATH="./node_modules/.bin:$PATH"

export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
