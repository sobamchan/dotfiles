set-option -g status on
set-option -g status-interval 2
set-option -g status-position top

set-option -g prefix 'C-t'
unbind C-b

set-option -g default-terminal "screen-256color"

set-option -g default-shell $SHELL
set-option -g default-command $SHELL

set-option -g history-limit 5000
set-option -g display-time 1000
 
set-window-option -g mode-keys vi
set-option -g default-command ""

set-window-option -g monitor-activity on
set-option -g visual-activity off

set-option -s escape-time 20

# set-option -g default-command "reattach-to-user-namespace -l zsh"