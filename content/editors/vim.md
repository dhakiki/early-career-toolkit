Vim
===

According to the [vim](http://www.vim.org/) website,

	Vim is a highly configurable text editor built to enable efficient text editing.

The power in it's efficiency lies in the shortkeys and inline commands.
Learning the short keys will take some time.
Try out this fun [game](http://vim-adventures.com/) to learn the basic commands.
It'll remind you of 8-bit computer games from the 90s. Good times.

Downloading
---
Vim is already installed in your computer within your Terminal.
To open a file in terminal using VIM, once you're in the directory of the file,
you can enter `vim file_name.extension`. Woop! There it is.

If straight Vim feels a little too daunting and you're not ready to part ways with your mouse quite yet, that's totally normal.

[MacVim](http://macvim-dev.github.io/macvim/) is available for Mac Users.
Once installed, to open MacVim from your directory in your terminal, simply enter `mvim` and a new window will show up. Wala!

Navigation
-----

The power of VIM is the ability to control movement with minimal movement of your fingers.
Thus, the following letters are used for moving through the file:

- `h`: move left
- `j`: move down
- `k`: move up
- `l`: move you to the right
- `e`: move to end of the next word
- `E`: move to the end of the next word (including puncuation)
- `w`: move to beginning of the next word
- `W`: move to the beginning of the next word (including punctuation)
- `0`: will take you to the beginning of the line
- `gg`: top of file
- `G`: end of file

Modes
-----

The text editor has the following modes:

  - *Normal*: the default mode -- used to traverse through the file and review.
    Use ESC to get back into this mode.
  - *Insert*: activate when ready to modify your file.
    The following keys will get you into insert mode:
    - `i`: activates insert mode to the left of your selector
    - `a`: actives insert mode to the right of your selector
    - `o`: activates insert mode on a new line
    - `I`: activates insert mode at the beginning of current line
    - `A`: actives inert mode at the end of the current line 
  - *Visual*: for navigation and manipulation of text selections,
    this mode allows you to perform most normal commands, and a few extra commands, on selected text.
    The following keys will get you into visual mode:
    - `v`: activates visual mode from your selector
      - *pro-tip*: to select the entire file use `ggvG`(= go to the top, enable visual mode, extend selection to end of file)
    - `SHIFT+v`: activates visual line mode, which selects the entire line your selector is on.
      - `j` and `k` will allow you to extend your selection to higher and lower lines

Commands
---

A lot of commands you may have seen in menus and on UIs all live in the command line.  `:` will activate the command line.
Here are some useful commands:

- `:w`- write (or save)
- `:q`- quit
- `:wq`- write (or save) and quit
- `:q!`- quit without making changes (! will override)
- `:qa`- quit all (feels so great at the end of the day...)
- `:vnew`- open a new panel (default is column format but can be configured)
- `:noh`- no highlight (useful when you're done with a search
- `:help` - anytime you're feeling lost, you've got a friend in VIM

In-File Search
--
If you're looking for a particular string in your file, you can active search by entering `/` in normal mode followed by the string. Hitting ENTER will get you out of command line entry mode. Here's an example:
`/daylight come and me wanna go home`. (cue [song](https://www.youtube.com/watch?v=6Tou8-Cz8is))

You can then traverse through the results using `n` (next result) or `N` (previous result).

Basic Useful Functions
--

While you "stack banana till de mornin' come" (see above song reference), you can learn about a few more really useful commands!

These commands can be paired in many different ways. Typically, commands have two parts: an *action* as well as an *item* to act on.

**Actions**

Here are a list of actions:

- `d`- delete
- `y`- yank (copy)
- `x` - cut
	- This command used alone will cut your selected character
- (there's gotta be more)

You can either pair these with the below items or use them on a selection made through visual mode:

**Items**

Here are a list of items you can pair the above commands with:

- `w`- takes action on the the word.
  - Note: if the cursor is placed in the middle of the word, the action will not apply to the characters before the cursor
  - Example: `dw` - delete word!
- `i[surrounding character(", ',  ) or (, ] or [),  or 'p']`
	- Examples:
		- `yi"`- yank in quotations (")
		- `yip` - yank in paragraph

Customization
--

To be continued..
Talk about .vimrc and all the magic there
Introduce Plugin managers and some basic really important plugins.
