---
title: 'The Liskov Substitution Principle and Unix Files'
draft: true
---

The [Liskov substitution principle](https://en.wikipedia.org/wiki/Liskov_substitution_principle) is a tenet of object-orientation that you should probably know, even if you don't work much in object-oriented languages. Put simply, subtyping relationships should be defined such that "any property proved about supertype objects also holds for its subtype objects" (from [the abstract of the definining paper](https://dl.acm.org/doi/10.1145/197320.197383)).
<!-- I'd rather this were a block quote, but I'm not doing that now -->
A really simple example is that it would make sense for `Human` to be a subtype of `Mammal`, since everything that is true about `Mammals` is true about `Human`s, but not so much the other way around. `Human`s only have 2 feet, while lots of `Mammal`s have 4.
But maybe that makes things way too simple. I don't think many people would start by saying `Mammal`s are a kind of `Human`.
<!-- Platypus example: What should haveChild method return? An egg, or a child (handling hatching within haveChild?)? Tie this into non-blocking I/O later, where erroring with `EWOULDBLOCK` is sort of like returning an egg and then having the caller wait (well, call the same function again) for it to grow up. This may be too much of a stretch, though.
LSP points out 3 key problems: history/mutability problem, it's easy to want the re-use of inheritance without the consistency of valid behavioral subtyping (platypus example), and it's all in how you define your interfaces (if you put carve-outs in them, you can still satisfy the LSP, but it may not be all that pleasant). Not sure how much the latter 2 are "pointed out" by the LSP, but they're certainly relevant. -->
<!-- Unix file descriptor APIs were developed before and during the development the LSP. They have no explicit subtypes (certainly none that are statically checked) - which sidesteps the technical issues with the LSP. But acting like "file" is the supertype is not great - some things, like epollfds, cannot even be read or written to - these are more just handles in general. -->