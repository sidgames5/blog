---
title: My New Blog
date: 2024-12-30
draft: true
tags:
  - homelab
---

It feels like this is the millionth time I made a new blog. My previous blog was really bad. I had to write blog posts inside a JSON file. Nothing at all was automated.

Recently I started using Obsidian to take notes. It's just a markdown editor but with a fancy UI and some more features. Then one day I realized I could write my blog posts in Obsidian and have them automatically pushed to my website.

## Pipeline
I need everything to be fully automated. I should be able to write a blog post in Obsidian and then a few minutes later it should appear on the website.

Here is how things work:
1. I write a blog post in obsidian
2. I run a script that prepares everything and uploads it to github
3. My server sees a new update in github
4. My server pulls and deploys the new site

## Deployment
Initially, I was going to make my own backend that converts the markdown files to HTML files. That was until I found Hugo. Hugo does the exact thing I want and it also has a large selection of themes and it is really easy to deploy.