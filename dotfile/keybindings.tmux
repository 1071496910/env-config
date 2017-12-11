# key binding for file keybinds.tmux in ~/.byobu/ 


set -g prefix C-b
unbind-key -n C-a
unbind-key '"'

bind-key '"' display-panes \; split-window -v -c "#{pane_current_path}"

bind-key x  confirm-before "kill-pane "

unbind-key -n F2
unbind-key -n F3
unbind-key -n F4

unbind-key -n F6
unbind-key -n F7
unbind-key -n F8
unbind-key -n F9


