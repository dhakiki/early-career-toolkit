Customize Your Environment
--

Regardless of what stack you'll be on, within no time, you'll get your hands on a lot of files.
At first, you'll live with 9 editor tabs, 5 terminal window, and three browser windows with 15 tabs each.
Maybe you'll be ok with typing out the entire terminal commands, or using git diff to view your changes.
You'll be fine using one Desktop Space and changing apps and tabs.
You'll traverse through your file tree to get to that one file that needs to be updated without a problem.
This section will cover ways to keep your work environment organized and efficient.
Some of these tips are quick to jump into.. others might need some more time.
All in all, they will all pay back in their own ways (by buying you more time and protecting your sanity).

Turbo Terminal User
-
No matter what stack you'll be in, you'll definitely be interfacing with the Terminal (that window that makes less computer-savvy people think you're writing the next virus on).
Wouldn't you love to use a shell that would remember your past entires and is customizable enough you can write your own aliases and write your own custom functions? Say no more!

**Fish Shell**

[Fish Shell](https://fishshell.com/) is a game changer.
Use [homebrew](http://brew.sh/) or the package installer on the site and your terminal will load fish on restart!
In order to customize your shell, you will be creating a file in `~/.config/fish/config.fish`.
Here are some really useful basic rules to get you going:

```
# how you set environment variables

set -x NODE_ENV development

# here's an example of a function without args. `..` will be replaced with `cd ..`

function ..
  cd ..
end

# here's an example of a function with args passed in

function gco
  git checkout -b "$argv"
end

# gone are the days you need to enter these commands separately

function gacp

  git add -A
  git commit -m "$argv"
  git push
end

# here are some handy aliases

abbr -a gp git push
abbr -a gps git push
abbr -a gd git diff
abbr -a gst git status
abbr -a gs git sync
abbr -a gsa git sync --abort
abbr -a gsc git sync --continue

# The following function replaces your Fish Prompt (the text to the left of your cursor) with an abbreviated version of your current location as well as your current git branch.

function fish_prompt --description 'Write out the prompt'

  # Just calculate these once, to save a few cycles when displaying the prompt

  if not set -q __fish_prompt_normal
      set -g __fish_prompt_normal (set_color normal)
  end

  if not set -q __git_cb
      set __git_cb " ["(set_color blue)(git branch ^/dev/null | grep \* | sed 's/* //')(set_color normal)"]"
  end

  if not set -q __fish_prompt_cwd
      set -g __fish_prompt_cwd (set_color $fish_color_cwd)
  end

  printf '\n%s%s%s%s > ' $__fish_prompt_cwd (prompt_pwd) $__fish_prompt_normal $__git_cb
end

```
**Reviewing Pre-Commit Changes Like a Champ**

Here are some tools to help you review your changes prior to a commit:

 - [GitX](http://gitx.frim.nl/) is for GUI lovers like myself (Only for Mac!). You can `Enable Terminal Usage` once installed and simply type `gitx` in your command line to open the tool.

**Bash Scripting 101**

So, you're a hipster developer and love Fish... Cool, most of us are. But, no matter what, at some point you'll need to do some Bash stuff.

Scared? No need to... Check the following links (thanks [@santiaro90](https://github.com/santiaro90) !) to get a grasp of some of what you'll be needing the most.

- [Baby Steps with the Shell](https://slides.com/santiaro90/shell-intro-first-steps)
- [Handle Those Files and Dirs](https://slides.com/santiaro90/shell-intro-file-management)
- [Doing Cool Things with Text](https://slides.com/santiaro90/shell-intro-text-processing)
- [Magic Tricks with `sed` and `awk`](#)
- [`find`, `grep` and Where the Heck Am I Using My Cool Class?](#)
- [Too Much Typing? Write a Script](#)
- [More Scripting, Mate!](#)

Master Window Management
--

Here are some ways you can minimize the kajillion times you use Command Tab (or the Linux Equivalent)

**Have an Extra Monitor (or two)**

This one's a given, but I didn't want to leave out the obvious.

**Work in Multiple Spaces**

If you don't have access to an extra monitor or two, get into the habit of using spaces on your Mac!
Here's a link to [Apple Support](https://support.apple.com/kb/PH18757?locale=en_US) explaining how to create, edit, remove, and reorganize your spaces.
That way, you can have one space for your IDE, another for the design comps, one for chat windows, et cetera!

**Window Manager Apps**

Here are some other great tools you could download to help manage your windows.

 - [tmux](https://tmux.github.io/) (Terminal Multiplexer) allows you to have multiple terminal windows in one view.
   You have the ability to add and resize views and traverse through with short keys.
 - [SizeUp](http://www.irradiatedsoftware.com/sizeup/) is a great app that allows you to control the size of your windows as well as
   move them to other spaces with some simple, easy to remember, short keys.


**Conquer Your Text Editor**

Of course, the majority of your time will be spent in your IDE coding.
There are plenty of options out there, and people are very opinionated about their editor.
Try them all, explore. Whichever you choose to go with, make sure you know enough about it to not let it deter you during coding.
Here are the basic necessities that will aide in your productivity:

 - File Name Text Search
 - Grep for String
 - Customizable Panels

There exists two configurable IDEs: Vim and EMacs. These two will require some investment of time to master and learn, but IT WILL PAY OFF. Click on the following links to learn how each of these work:

 - [Vim](editors/vim.md)
