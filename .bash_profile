#!/bin/bash

for file in ~/.{bash_prompt,aliases,funcs,path,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
unset file

# Shell options

# append to history file
shopt -s histappend
# autocorrect `cd` typos
shopt -s cdspell
# case-insensitive matching for filename expansion
shopt -s nocaseglob
