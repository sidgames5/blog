#!/bin/bash
while inotifywait -r -e modify,create,delete /home/sid/Notes/blog_posts; do
    /home/sid/Code/sidblog/deploy.sh
done
