#!/bin/zsh
new_args=();

# Remove trailing space (for old behavior use "source/.")
for i in "$@"; do
    case $i in /) i=/;; */) i=${i%/};; esac
    new_args+=$i;
done
exec rsync "${(@)new_args}"
