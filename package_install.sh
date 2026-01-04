#!/usr/bin/env bash

ujust setup-dev
rpm-ostree install kdotool
rpm-ostree install bat

# Adding a snippet to .zshrc to source all .zsh files in ~/.myzsh
cat <<'EOF' >>~/.zshrc

# Load all custom configurations from ~/.myzsh
if [ -d ~/.myzsh ]; then
    # null_glob: ignores the pattern if no files match
    # local_options: keeps this setting restricted to this scope
    setopt local_options NULL_GLOB
    
    for file in ~/.myzsh/*.zsh; do
        source "$file"
    done
fi
EOF
