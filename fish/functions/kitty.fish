function kitty --description 'Launch kitty without inheriting stale tmux environment variables'
    # A Kitty window launched from inside tmux can inherit TMUX/TMUX_PANE even
    # though it is not actually inside tmux. That makes Pi/mech-pi disable or
    # misroute inline Kitty graphics. Strip those vars for child Kitty windows.
    env -u TMUX -u TMUX_PANE command kitty $argv
end
