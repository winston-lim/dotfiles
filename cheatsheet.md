# Cheatsheet

## Vim

- `<count><motion>`: repeats a motion `count` times
  - e.g. `<3><j>` moves down 3 lines
- `<count><action>`: repeats an action `count` times
  - e.g. `<3><dd>` deletes 3 lines
- `<count><action><count><motion>`
  - e.g. `<3><d><4><w>`: deletes 4 words 3 times

### Motions

- `<gg>`: go to top
- `<G>`: go to bottom
- `<$>`: go to end of line
- `<^>`: go to start of line
- `<0>`: go to start of line (including spaces)
- `<[-f|F>` - go to next function start|end

### Actions

- `<a>`: enter insert mode at start of line
- `<A>` enter insert mode at the end of line
- `<I>`: enters insert mode at the start of line
- `<x>`: deletes a charlcter
- `<r><character>`: replaces current cursor with `character`
- `<yy>`: yanks current line
- `<dd>`: deletes current line
- `<\>\>>`: indents selected line
- `<.>`: repeats last action

## LazyVim

- `<z><t|b|z>`: scroll current line to top|bottom|middle of screen
- `<ctrl><o>`: go to previous cursor
- `<ctrl><i>`: undo `<ctrl><o>`
- `<ctrl><r>`: view list of registers in Insert mode
- `<">`: view list of registers in Normal mode
- `<s><character>*`: seeks the input character (s)
- `<f><character>`: finds first occurrence of input character and
  moves cursor to it
- `<t><character>`: finds first occurrence of input character and
  moves cursor one character before it
- `<leader><f><M|m>`: opens mini.files
- `<leader><c><d>`: views line diagnostics
- `<leader><c><p>`: previews current file (e.g. markdown)
- `<leader><s><n><a>`: shows all logs

## Kitty

- `<ctrl><j|k>` to scroll up or down

## TMUX

- Custom commands
  - `<ctrl><h|j|k|l>`: moves pane focus left|down|up|right
  - Copy mode: uses vim bindings
- Shell commands
  - `tmux new`: starts a new session
    - `tmux new -s <name>` starts a new session with `name`
    - `tmux new -A -s <name>`: start or attach to an existing session named `name`
    - `tmux new -s <session_name> -n <window_name>`: starts a new named session and
      named window
  - `tmux kill-session`: kills current session
    - `tmux kill-session -t <name>`: kills a named session
    - `tmux killsession -a -t <name>`: kills all sessions except a named session
  - `tmux ls`: list all sessions
  - `tmux a`: attach to last session
    - `tmux a -t <name>`: attached to a named session
- Prefixed commands
  - `<:>`: enter command mode
    - `:new`: start a new session
    - `:new -s <name>`: starts a new session with `name`
    - `:attach -d`: attach and detach others on the seession
  - session commands
    - `<$>`: rename session
    - `<d>`: detach session
    - `w`: window preview
    - `<(|)>`: move to next or previous session
  - window commands
    - `<c>`: create window
    - `<,>`: rename current window
    - `<&>`: close current window
    - `<0..9>`: select window by number
    - `<w>`: list windows
  - pane commands
    - `<%>`: split current pane with vertical line
    - `<">`: split current pane with horizontal line
    - `<{}>`: move current pane left or right

  - ## `<[>` to enter copy mode

## Aerospace

- `<option><1..9>`: switch to some workspace
- `<option><shift><1..9>`: assign current node to some workspace
- `<option><h|j|k|l>`: focus in some direction
- `<option><tab>`: toggle between current and previous workspace
- `<option<-|+>`: resize current node up or down
- `<option></>`: toggle between horizontal and vertical layout (tiles)
- `<option><,>`: toggle between horizontal and vertical layout (accordion)
- `<option><shift><;>`: enter mode.service.binding
  - `<esc>`: enter mode.main.binding
  - `<r>`: flatten workspace tree
  - `<backspace>`: close all windows but current
  - `<option><shift><h|j|k|l>`: join with left|down|up|right
