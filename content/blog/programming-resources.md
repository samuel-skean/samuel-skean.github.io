---
title: 'Some Programming Resources'
date: 2024-09-24
draft: false
---

For my first blog post, I thought it would make sense to list my favorite lesser-known programming resources. I don't typically read textbooks, so if something's here, I found it worth the effort.
The resources are arranged vaguely from beginner to advanced, but I'm not attempting to lay out a course of study - these are just *some* things that have helped *me*.

- [*A Byte of Python*](https://python.swaroopch.com/) by Swaroop C. H.

    This was my first-ever exposure to programming, and I think it's still a pretty good place to start. Python is a simple, (mostly) sane language, which makes it a good one to start with, and Swaroop distills the basics without dumbing it down. I don't know if I'd have liked coding without this book. Probably, but maybe not!
- [*The Go Language*](https://www.youtube.com/playlist?list=PLIbUZ3URbL0Hn-2v6oB9nMfIfJPYDY9Nv) by Brian Will
    
    This was my go-to resource for reviewing Go when I had to help teach it a few semesters ago. It's a simple intro to a famously simple language, and it highlights both my favorite and least favorite  aspects of the language. It's surprisingly comprehensive for its ~1 hour 20 minute runtime, too. I also have to mention [*Storing Data in Control Flow*](https://research.swtch.com/pcdata) by Russ Cox, simply because it finally made me realize that concurrency can make code *way* simpler, even when it doesn't speed things up.
- [*OCaml Programming: Correct, Efficient, Beautiful*](https://cs3110.github.io/textbook/cover.html) primarily by Michael R. Clark

    This Cornell textbook did a great job teaching me functional programming, and reminding me why data structures are beautiful. I especially recommend the chapters on references and red-black trees. Keep in mind that I read this mostly in Fall 2023, and the textbook is frequently updated, so it may be different now.
- [*Learn Rust with Entirely Too Many Linked Lists*](https://rust-unofficial.github.io/too-many-lists/) by Aria Desires

    This one is *brilliant*. I've gotten through all of this except for the part implementing cursors. It mixes snark and content really well, and Rust is one of the most interesting new languages of the 21st century. Before starting, you should know how to write a linked-list in a language like C or C++. Exposure to functional languages (especially OCaml or F#) will also help, but isn't necessary.
    
    I've since used it to try to teach Rust in a small group, and it's going well! Some videos of that teaching are [here](https://www.youtube.com/playlist?list=PLK9aFcPV-ytJI93_ja09k7ie-7pINOXbz), but they're incomplete.
- [*Ray Tracing in One Weekend*](https://raytracing.github.io/books/RayTracingInOneWeekend.html) by Peter Shirley, Trevor David Black, and Steve Hollasch
    This is a really good, from-scratch introduction to ray-tracing, my favorite kind of graphics rendering. It assumes decent knowledge of C++ (though there are versions of the book for many programming languages), but doesn't assume *any* prior knowledge of graphics. It's pretty quick to get some pretty images on the screen, so I really recommend it if you're feeling burnt out on low-level, intangible code. I've only gotten about 50% of the way through this book, and it definitely took me longer than a weekend, but it's one of my proudest projects. I talk more about it [here](projects/#path-tracerhttpsgithubcomsamuel-skeanmy_raytracing_adventures). <!-- TODO: Update this link when I change the name of the repository. --> The book is the first of a series. I haven't touched the later ones, but I intend to!

I'll update this as I find other great resources.
