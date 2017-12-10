# key binding for file keybinds.tmux in ~/.byobu/ 


set -g prefix C-b
unbind-key -n C-a
unbind-key '"'

bind-key '"' display-panes \; split-window -v -c "#{pane_current_path}"

bind-key x  kill-pane

