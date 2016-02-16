Cheat Sheet
===========================
# tmux
tmux `<prefix>` is `ctrl+b`. All commands below should be prefixed with `ctrl+b`
unless otherwise noted (or if they are `tmux` CLI commands)

Sessions:
* Save tmux sessions: `ctrl+s` (tmux resurrect)
* Restore tmux sessions: `ctrl+r` (tmux resurrect)
* New named tmux session: `tmux new -s <mysession>`
* Attach to existing sessions: `tmux a`
* List tmux sessions: `tmux ls`
* Kill session: `tmux kill-session -t <mysession>`

* `s`: list sessions
* `$`: name the current session
* `d`: detach from session
* `(`: move to previous session
* `)`: move to next session

Windows (tabs):
* `c`: create window
* `,`: rename current window
* `<#>`: go to window number
* `n`: next window
* `p`: previous window
* `w`: list windows
* `&`: close current window

Panes (splits):
* `%`: vertical split
* `"`: horizontal split
* `o`: switch to next pane
* `q`: show pane numbers (type number to go to that pane)
* `z`: toggle pane zoom (make pane take 100% of screen)
* `x`: kill pane
* `{`: move current pain left
* `}`: move current pain right
* `;`: toggle last active pane
* `<spacebar>`: toggle between pane layouts
* `!`: convert pane to a window

Custom:
* `j`: resize pane down 10
* `k`: resize pane up 10
* `l`: resize pane left 10
* `h`: resize pane right 10

Synchronize panes (send same command to each pane in window):
* `:setw synchronize-panes` (will toggle on/off)

Resize panes:
* `:resize-pane -U 10`: resize current pane up by 10 cells
* `:resize-pane -D 10`: resize current pane down by 10 cells
* `:resize-pane -L 10`: resize current pane left by 10 cells
* `:resize-pane -R 10`: resize current pane right by 10 cells

Copy mode:
* `[`: enter copy mode (also for scrolling)
* (no prefix) `<space>`: start selection
* (no prefix) `<enter>`: copy selected text and exit copy mode
* `]`: paste selected text
* standard vim keys for moving around and searching
* `q`: quit mode
* `esc`: clear selection
* `:show-buffer`: display buffer_0 contents
* `:capture-pane`: copy entire visual contents of pane to a buffer
* `:list-buffers`: show all buffers
* `:choose-buffer`: list all buffers and paste selected
* `:save-buffer buf.txt`: save contents of buffer to buf.txt

Misc:
* `:source-file ~/.tmux.conf`: reload tmux config
* `:`: enter command mode
* `?`: show shortcuts

# vim
Comment/uncomment blocks:
Use block mode: `ctrl-v`. highlight via normal nav. `shift-i + <char>`, `esc`
Line comment (or multiple line comments in visual mode): `<leader>c<space>`
toggles comment

Vertical split: `:vsplit`
Change between splits: `<ctrl-w> <ctrl-w>`

Git:
* `:Git <cmd>` (from vim-fugitive plugin) then any git command (including aliases)
* `:Gblame:`: Git blame interactive vertical split

Spelling:
* `setlocal spell` (enable spell check)
* `[s`: next misspelled word
* `]s`: previous misspelled word
* `z=`: see spelling suggestions

* `:set ft?`: see the file type detected by vim

## vim-fugitive
* `:Gblame` to see git blame info
* `:help fugitive`
* `:Gstatus` to bring up output of `git status`
* `:Ggrep` to search the working tree using `git grep`
* `:Glog` loads all previous revisions of the file into the quickfix listso you
    can iterate over them and watch the file evolve
* `:Git` to run any arbitrary command `:Git!` to open the output of a command
    in a temp file

## rainbow-parenthesis
* `:RainbowParenthesesToggle       " Toggle it on/off`
* `:RainbowParenthesesLoadRound    " (), the default when toggling`
* `:RainbowParenthesesLoadSquare   " []`
* `:RainbowParenthesesLoadBraces   " {}`
* `:RainbowParenthesesLoadChevrons " <>"`

## ctrlp

## nerdtree
* `<C-n>`: toggle NERDTree

## syntastic

## nerdcommenter

## jedi-vim

## vim-indent-guides
* `<Leader>ig`: toggle plugin

## git-gutter
* `<leader>gg`: toggle GitGutter

# zsh
