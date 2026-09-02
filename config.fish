fish_vi_key_bindings
set -g theme_color_scheme zenburn

set -x BAZEAN_POSTGRES_USERNAME student01
set -x EDITOR 'nvim'
set -x NVIM_LISTEN_ADDRESS '/tmp/nvimsocket'
set -x NODE_NO_WARNINGS 1
set -x CLAWDBOT_DISABLE_BONJOUR 1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/john/miniconda3/bin/conda
    eval /home/john/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end

if test -f "/home/john/miniconda3/etc/fish/conf.d/mamba.fish"
    source "/home/john/miniconda3/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

# Auto-start tmux for interactive shells by default.
# The fish `kitty` wrapper strips stale TMUX/TMUX_PANE when opening a new
# Kitty window from inside tmux, so the new shell can start a fresh tmux and
# still support Pi/mech-pi Kitty graphics passthrough.
if status is-interactive
    and isatty stdin
    and isatty stdout
    and not set -q TMUX
        exec tmux
end

# Set default input/output
#pactl set-default-source alsa_input.usb-Blue_Microphones_Yeti_Stereo_Microphone_LT_19120208352462900017_111000-00.analog-stereo
#pactl set-default-sink alsa_output.pci-0000_00_1f.3.hdmi-stereo

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/john/google-cloud-sdk/path.fish.inc' ]; . '/home/john/google-cloud-sdk/path.fish.inc'; end
set --global --export HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
set --global --export HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
set --global --export HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
fish_add_path --global --move --path "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin";
if test -n "$MANPATH[1]"; set --global --export MANPATH '' $MANPATH; end;
if not contains "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH; set --global --export INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH; end;

# OpenClaw Completion
if test -f "/home/john/.openclaw/completions/openclaw.fish"
    source "/home/john/.openclaw/completions/openclaw.fish"
end

# Overleaf Git token for overleaf-pi
