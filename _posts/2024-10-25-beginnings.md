---
layout: post
category: nix, devenv, rails, playwright
toc: true
---
# 1 - Goals of the project.
- The goal of the project is to get back in the habit of learning new things—not just learning but also attempting to learn in public. Lately, I've been in a rut, but when I started looking into Rails 8, I started to feel excitement about programming I haven't felt in forever. So, I am going to be putting out my plans, hopefully in a way that will help keep me accountable and also help someone else learn something, too.

# 2 - Plans

- There are several things I want to expand my knowledge on.  One thing is that javascript has become fairly complex, and also javascript api's are becoming more unified. So I am going to be trying to write this application using vanilla javascript mostly, but also trying to use Rails' turbojs features.

## 2.1 - Technologies I plan to explore.

- [[Rails 8]] specifically [[Turbo]], [[ActionCable]] and the [[postgres]] [[ActiveJob]] adapters.

- [[Nix]] and [[Flakes]] so that I can easily setup and teardown [[development environments]].

- [[Contnuous Integration]] / [[Continuous Deployment]] technologies using github actions and nix to build [[containers]].


- I want to try [[podman]] over [[docker]]

- I want to explore [[AI]] tools to speed up my process. ([[Cursor]], [[ChatGPT]], etc..)

- After watching [[railsconf 2024]] I am excited to try out [[Playwright]] for testing.

## 2.2 - The project's purpose

- I always learn better by building some sort of tool, over the years I have started and stopped many projects.  This time inorder to follow through I am building a tool that I will use as I continue to learn, iteratively adding features as I learn new things or discover different needs.

- The first application will be a pomodoro timer, and a task list, I already have a few ideas for how I want to differentiate this from other pomodoro timers.  I also want to use this to collect data on my productivity so that I can make data driven decisions on how I can improve my productivity.

# 3 - So far...

- The first thing I did was configure my development machine with [[Nix]] and [[Flakes]].  My goal here is to have a reproducible development environment that is easy to setup and tear down.  I also want to learn how to write [[flakes]] so that I can share configurations with others.

- Around the same time I began playing with using scaffolding to learn turbojs, I now have a working todolist application but it doesn't have user specific tasks yet, it's just one list for all users.  This is something I want to add next as I have already tried out rails 8 authentication generato2r.

- After watching [https://youtube.com/watch?v=loTaZAkIZP0](Justin Searl's Talk at RailsConf 2024) I found out about [[Playwright]] and wrote some feature specs for the todolist application.
