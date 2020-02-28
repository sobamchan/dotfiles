bind d detach

# Reload config
bind r source-file ~/.tmux.conf \; display "Reloaded!"

# | to split horizontally
bind | split-window -hc "#{pane_current_path}"
bind -n 'M-\' split-window -hc "#{pane_current_path}"

# - to split vertically
bind - split-window -vc "#{pane_current_path}"
bind -n M-- split-window -vc "#{path_current_path}"

# Move panes by vim key binds
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Resize panes by vim key binds
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5
