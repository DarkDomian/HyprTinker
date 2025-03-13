#!/bin/bash

# Define the source and target directories
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
GITHUB_REPO_PATH="$SCRIPT_DIR/configs"
TARGET_DIR="$HOME/.config"

# Define color codes
GREEN='\033[32m'
RED='\033[31m'
RESET='\033[0m'

create_links() {
    local source_dir="$1"
    local target_dir="$2"

    mkdir -p "$target_dir"
    for item in "$source_dir"/*; do
        if [ -d "$item" ]; then
            create_links "$item" "$target_dir/$(basename "$item")"
        elif [ -f "$item" ]; then
            if [[ "$(basename "$item")" == "README.md" ]]; then
                continue
            fi

            local target_file="$target_dir/$(basename "$item")"
            if [ -e "$target_file" ]; then
                if cmp -s "$item" "$target_file"; then
                    echo -e "[${GREEN}SKIP${RESET}] Link already exist and is the same: $target_file"
                else
                    rm "$target_file"
                    ln "$item" "$target_file"
                    echo -e "[${GREEN}UPDATE${RESET}] Link updated: $target_file"
                fi
            else
                ln "$item" "$target_file"
                echo -e "[${RED}SUCCESS${RESET}] Link created: $target_file"
            fi
        fi
    done
}

# Start the symlink creation process
create_links "$GITHUB_REPO_PATH" "$TARGET_DIR"

echo "Link creation complete."

