---
layout: post
category: now, jekyll, cloudflare
toc: true
---

I use cloudflare for my DNS and saw that I could host static sites for free.  I tried to use their jekyll integration but it was a pain to setup, it was finding my yarn file which I am only really using for Dangerfiles, so for now I am just using github actions to build the site and the wrangler action to deploy it, I also had to combine the two actions because the artifacts from the jekyll build were not being passed to the wrangler action.

I saw this interesting page when looking at other portfolio sites and thought it was a cool idea so I added my own [Now Page]({{ "/now" | absolute_url }}).