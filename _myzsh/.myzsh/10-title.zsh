# ~ / .zsh_title
# ------------------------------------------------------------------------------
# Terminal Title Configuration for WezTerm
# ------------------------------------------------------------------------------

# Disable the default Oh My Zsh title behavior
DISABLE_AUTO_TITLE="true"

# Set the title when the prompt is idle (precmd)
# Result:   ~/path/to/dir
function set_title_precmd() {
    # %~: Current directory with ~ substitution
    local title_str="  %~"
    print -Pn "\e]2;$title_str\a"
}

# Set the title when a command is running (preexec)
# Result:   command | ~/path
function set_title_preexec() {
    # $1: The full command line being executed
    local cmd_bin="${1%% *}"
    local title_str="  $cmd_bin | %~"
    print -Pn "\e]2;$title_str\a"
}

# Register the hooks
autoload -Uz add-zsh-hook
add-zsh-hook precmd set_title_precmd
add-zsh-hook preexec set_title_preexec
