abbr -a e nvim

if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
	abbr -a ll 'exa -l'
	abbr -a lla 'exa -la'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

if status --is-interactive
	tmux ^ /dev/null; and exec true
end

set fish_greeting

set PATH ~/.config/bin ~/.local/bin $PATH

# Exa settings
setenv TIME_STYLE long-iso
setenv EXA_COLORS da=37

setenv EDITOR nvim
setenv LESS "-F -X -R"

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

set fish_color_command brwhite --bold
set fish_color_comment cyan
set fish_color_param white
set fish_color_quote magenta
set fish_color_autosuggestion brblack

set fish_color_error red
set fish_color_search_match --background=blue
set fish_color_selection --background=yellow
set fish_pager_color_completion brwhite
set fish_pager_color_prefix brwhite --bold

if command -v starship > /dev/null
	eval (starship init fish)
else
	set_color red
	echo -n "ERROR"
	set_color normal
	echo ": Missing the fish prompt binary 'Starship'."
end
