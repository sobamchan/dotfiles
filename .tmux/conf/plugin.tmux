set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

#===================================
# Auto start tmux and restore
#===================================

# auto start terminal
set -g @continuum-boot 'on'
set -g @continuum-boot-options 'iterm'

# auto restore tmux
set -g @continuum-restore 'on'
