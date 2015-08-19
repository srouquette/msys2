#!/usr/bin/bash

# .tmux.conf is broken, so I use a script to initialize it

# Use Ctrl+A (default Ctrl+B) as prefix
tmux unbind C-b
tmux set -g prefix C-a
tmux bind a send-prefix

# split panes using v and b
tmux bind v split-window -h
tmux bind h split-window -v

# switch panes using Alt-arrow without prefix
tmux bind -n M-Left select-pane -L
tmux bind -n M-Right select-pane -R
tmux bind -n M-Up select-pane -U
tmux bind -n M-Down select-pane -D

# Colors

# The modes {
tmux setw -g clock-mode-colour colour135
tmux setw -g mode-attr bold
tmux setw -g mode-fg colour196
tmux setw -g mode-bg colour238
# }

# The panes {
# tmux set -g pane-border-bg colour235
tmux set -g pane-border-fg colour238
# tmux set -g pane-active-border-bg colour236
tmux set -g pane-active-border-fg colour51
# }

# The statusbar {
tmux set -g status-utf8 on
tmux set -g status-justify left
tmux set -g status-interval 2
tmux set -g status-position bottom
tmux set -g status-bg colour234
tmux set -g status-fg colour137
tmux set -g status-left ''
# tmux set -g status-attr dim
tmux set -g status-right '#[fg=colour233,bg=colour241,bold] %d/%m #[fg=colour233,bg=colour245,bold] %H:%M:%S '
tmux set -g status-right-length 50
tmux set -g status-left-length 20

tmux setw -g window-status-current-fg colour81
tmux setw -g window-status-current-bg colour238
tmux setw -g window-status-current-attr bold
tmux setw -g window-status-current-format ' #I#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F '

tmux setw -g window-status-fg colour138
tmux setw -g window-status-bg colour235
tmux setw -g window-status-attr none
tmux setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

tmux setw -g window-status-bell-attr bold
tmux setw -g window-status-bell-fg colour255
tmux setw -g window-status-bell-bg colour1
# }

# The messages {
tmux set -g message-attr bold
tmux set -g message-fg colour232
tmux set -g message-bg colour166
tmux set -g message-command-fg blue
tmux set -g message-command-bg black
# }
