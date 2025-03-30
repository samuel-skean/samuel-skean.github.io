---
title: Software that Gets Away with Something - Outline/Ideas
draft: true
---

An idea for a series on topics that once confused me, or might confuse others. Mostly systems-based, but might branch out to other things to (e.g. Markdown). The fundamental theme is that lots of good software somehow "gets away with something" - either sloppy-seeming design (Unix files), or avoiding a class of problems that seems tricky to avoid, or avoiding a kind of functionality. Should convey a positive sense of how "it's amazing that it works at all". Also, convey that there are *multiple ways to do these things*. All inspired somewhat by [Worse is Better](https://www.dreamsongs.com/WorseIsBetter.html).

The name might be bad, it's really just about unintuitive computer concepts.

Topic Ideas (most interesting generally first):
1. Unix file descriptors - they don't all behave like normal files - not even close - but it's okay because their minimal interface is still useful
2. Short reads and writes - a uniform interface, read buffering (reads are different - sometimes *harder!* than writes) (bring up ^D flushing buffers), enables efficient use of CPU even without polling. Non-blocking I/O *might* belong here.
3. Forking in Unix - a process is a machine that can plug things into itself (that is, open/dup file descriptors) - we get away without explicit calls to manage/create other processes and needing to synchronize processes to configure them. Also the fact that file descriptions are shared should be discussed - and that fds are like global pointer variables - but that might make this too long.
4. TCP/IP - we get away without reliability, or congestion control, at the network layer
5. Virtual memory - we get away with sharing a computer's memory but not layering any concept of object on top of that. Bring up language-based systems, but how they are more limiting.


6. Static and Dynamic Linking in Unix - oh god why this is crazily complicated, but we get away with so much, like name mangling (no need for a specific metadata field)
7. Sharing immutable data - too broad of a topic, but a wonderful potential for abstraction
8. Caching - more of a hardware thing, but we get away without writing software that explicitly uses our hardware in a super fast way. Also applies to networking and software, but there it's more immediately obvious that what could be cached could not be anticipated.
9. DNS - we get away with unreliability (UDP) and not naming things securely (but that's more because of TLS). Also, we "get away with" (a stretch even for me) not needing a contact book for each person - the real goal of DNS is to enable independence from the identity of machines involved in fulfilling a connection, not just give us nicer names.