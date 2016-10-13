Back to [Customize a Productive Coding Environment](../customize_your_environment.md)

Vim
===

According to the [vim](http://www.vim.org/) website,

	Vim is a highly configurable text editor built to enable efficient text editing.

The power in its efficiency lies in the shortkeys and inline commands.
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
To install using [Homebrew](http://brew.sh/), simply run `brew install macvim`
Once installed, to open MacVim from your directory in your terminal, simply enter `mvim` and a new window will appear. Wala!

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

- `w` takes action on the the word.
  - Note: if the cursor is placed in the middle of the word, the action will not apply to the characters before the cursor
  - Example: `dw` - delete word!
- `i[surrounding character(", ',  ) or (, ] or [),  or 'p']` takes action on items surrounded by a character
	- Examples:
		- `yi"`- yank in quotations (")
		- `yip` - yank in paragraph

Customization
--

The beauty of Vim is it's flexibility.

In order to customize, create a `.vimrc` file in your root directory.
Here are some basic customization settings you can add in there:

*Note: lines/text starting in `"` are comments*
*Note: feel free to customize these values to your needs! this is only a sample.

```
"basic settings

syntax enable
set background=light
colorscheme solarized
set guifont=Monaco:h18

"miscellaneous settings
set noswapfile
set nobackup "by default, vim creates backup files of your changes.
set nowrap
set number "display line numbers
set cursorline "highlight the line cursor lies on
set cursorcolumn "highlight the column cursor lies on
:set expandtab "enters space characters when tab is pressed
:set tabstop=2 "spaces per tab
:set shiftwidth=2 "spaces per indentation

"key remappings
let mapleader = "\<Space>" "define your leader (what will trigger commands -- utilized in plugins below)

```

Enhance Usage with Plugins
--

Many powerful plugins have been created that will greatly enhace Vim's usability.
Below will be a few staples that will be necessary for navigating and searching through your files.
However, there are tons of plugins out there on the interwebs. Build the editor of your dreams!

**Plugin Managers**

In order to utilize these wonderful plugins, you will need a Plugin Manager.

The following are known plugin managers:

* [Vim Plug](https://github.com/junegunn/vim-plug) - Easy and Minimalist Plugin Manager (see readme for installation instructions)

**Plugins**

The following are basic extremely useful plugins:

* [NerdTree](https://github.com/scrooloose/nerdtree) - file tree explorer which you can manipulate with vim commands

  * **Install using Plug**:
    * Enter the following in your `.vimrc` file:
      ```
      call plug#begin('~/.vim/plugged')
        Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
      call plug#end()

      "key remappings
      let mapleader = "\<Space>"
      nnoremap <Leader>t :NERDTreeToggle<CR>
      ```
    * Enter `:PlugInstall` in your `.vimrc` editor
    * When you open a new window, hit <Leader>t and NerdTree will open!
  
* [Silver Searcher](https://github.com/ggreer/the_silver_searcher) and [Ag](https://github.com/rking/ag.vim) - Allows for grepping or searching files for matching text.

  * **Install using Plug**:
    * Insert the following plugs in your `.vimrc` file inside your plug block:
      * `Plug 'ggreer/the_silver_searcher'`
      * `Plug 'rking/ag.vim'`
    * Insert the following script in your `.vimrc`:

      ```
        " The Silver Searcher
        if executable("ag")
          set grepprg=ag\ --nogroup\ --nocolor
          let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
        endif
      ```

    * Enter `:PlugInstall` in your `.vimrc` editor
    * When you open a new window, enter the following command:
      * `:Ag "daylight come and me wanna go home"<Enter>`
    * A new pane will appear with the results of your search

* [CtrlP](https://github.com/kien/ctrlp.vim) - Fuzzy file finder (allows you to open files by entering name)
  * Installation Insturctions are [here](http://kien.github.io/ctrlp.vim/#installation)
  * Map the command to your leader for easy access in your `.vimrc`:

    ```
    "key remappings
    let mapleader = "\<Space>"
    nnoremap <Leader>f :CtrlP<CR>
    ```

  * When you open a new window, enter <Leader>f, and a new pane will appear allowing you to fuzzy file search
  * If your file isn't appearing, you may need to re-index your files by hitting `F5`

[Back to Top](#top)
