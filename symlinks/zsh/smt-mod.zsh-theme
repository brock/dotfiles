# -----------------------------------------------------------------------------
#          FILE: smt-mod.zsh-theme
#   DESCRIPTION: oh-my-zsh theme file, based on smt by Stephen Tudor
#        AUTHOR: Brock Angelo
#       VERSION: 0.1
#    SCREENSHOT:
# -----------------------------------------------------------------------------

### RPROMPT Styled function responses
function prompt_char() {
  git branch >/dev/null 2>/dev/null && echo "%{$fg[green]%} $(show_help || echo "❯") %{$reset_color%}" && return
  hg root >/dev/null 2>/dev/null && echo "%{$fg_bold[red]%}☿%{$reset_color%}" && return
  echo "%{$fg[green]%}❯ %{$reset_color%}"
}

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" 💩 "
ZSH_THEME_GIT_PROMPT_AHEAD=" 🚀 "
ZSH_THEME_GIT_PROMPT_CLEAN=" 👍 "

ZSH_THEME_GIT_PROMPT_ADDED=" 📦 " # staged
ZSH_THEME_GIT_PROMPT_MODIFIED=" 📝 " # modified
ZSH_THEME_GIT_PROMPT_DELETED=" 📛 " # deleted
ZSH_THEME_GIT_PROMPT_RENAMED=" 👯 " # renamed
ZSH_THEME_GIT_PROMPT_UNMERGED=" 🚔 " # unmerged
ZSH_THEME_GIT_PROMPT_UNTRACKED=" 🙈 " # untracked

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"


# Colors vary depending on time lapsed.
ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%{$fg[green]%}"
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%{$fg[yellow]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%{$fg[red]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%{$fg[cyan]%}"



PROMPT='%{$fg[cyan]%}$USER%{$reset_color%}@%{$fg[red]%}%m%} %{$fg[cyan]%}%~ %{$reset_color%}$(git_prompt_info)
$(git_prompt_short_sha)%{$reset_color%}$(prompt_char)'

RPROMPT='${return_status}%{$reset_color%}'
RPROMPT+='$(git_prompt_status)'
