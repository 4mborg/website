#!/bin/bash

# Function to generate a random string
generate_random_string() {
    cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w $1 | head -n 1
}

# Function to generate a random date between 2020 and 2025
generate_random_date() {
    # Define start and end dates as seconds since epoch
    start_date=$(date -d "2020-01-01" +%s)
    end_date=$(date -d "2025-06-15" +%s)
    # Calculate the range of seconds
    range=$((end_date - start_date))
    # Generate a random number within the range
    random_seconds=$(shuf -i 0-$range -n 1)
    # Convert random seconds back to a date
    date -d "@$((start_date + random_seconds))" +%Y-%m-%d
}

# Function to generate random tags
generate_random_tags() {
    tags=("tech" "coding" "design" "web" "zola" "blogging" "devops" "linux" "programming" "css")
    num_tags=$((RANDOM % 4 + 1)) # 1 to 4 tags
    selected_tags=()
    for ((i=0; i<num_tags; i++)); do
        selected_tags+=("\"${tags[$((RANDOM % ${#tags[@]}))]}\"")
    done
    echo $(IFS=,; echo "${selected_tags[*]}")
}

# Function to create a blog post
create_post() {
    local post_count=$1
    local content_dir="content/blog"

    # Ensure content/blog directory exists
    mkdir -p "$content_dir"

    for ((i=1; i<=post_count; i++)); do
        title="Post Title $(generate_random_string 8)"
        slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
        author="Author $(generate_random_string 6)"
        date=$(generate_random_date)
        tags=$(generate_random_tags)
        filename="$content_dir/random-$slug.md"

        cat << EOF > "$filename"
+++
title = "$title"
date = $date
authors = ["$author"]
draft = false
[taxonomies]
tags = [$tags]
+++

This is a randomly generated blog post for testing purposes.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

## Section 1
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

## Section 2
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
EOF

        echo "Created: $filename"
    done
}

# Function to clean random posts
clean_posts() {
    local content_dir="content/blog"
    find "$content_dir" -type f -name 'random-*.md' -delete
    echo "Removed all randomly generated blog posts"
}

# Main script logic
case "$1" in
    build)
        if [[ ! $2 =~ ^[0-9]+$ ]]; then
            echo "Error: build command requires a number as argument"
            exit 1
        fi
        create_post "$2"
        ;;
    clean)
        clean_posts
        ;;
    *)
        echo "Usage: $0 {build <number>|clean}"
        exit 1
        ;;
esac