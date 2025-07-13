All browsers mentioned are the latest versions available as of 20250712. TODO: Record all those versions.
macOS Safari: Version 18.5 (20621.2.5.11.8)
macOS Firefox: 140.0.4 (aarch64)
macOS Brave: Brave 1.80.120 (Official Build) (arm64)
             Chromium: 138.0.7204.101
iOS Firefox: 140.3 (57709)
iOS Safari: unversioned as far as I can tell, but it's the one on iOS 18.5

Okay, this is weird. There's buggy behavior when you browse my site and click on the linked text "working with others" on the "About Me" page. That's a link to a url ending in an id (nullability-in-oohttpsgithubcomolympicenenullability-in-oo). I'm 99% sure `hugo` generated this id, but I'm not sure where that's documented, and I don't know if there's a better way to link to different parts of the page than this. Does markdown itself have a concept of ids? Is this generation influenced at all by my theme? (I know my theme overrides some  `hugo` "shortcodes", but I'm not sure if those apply here, or if there's other ways my theme could influence this).
When I click on that link ("working with others"):
- It *should* take me to the correct page, scrolling the viewport (with no animation) such that "Nullability in OO" is at the top of the viewport or, failing that, it's on the page and the bottom of the page is in view.
- It *does* take me to the correct page, **but** it scrolls me... somewhere else. This depends on the browser.
  - If the browser is WebKit-based (I've tested it on iOS Safari, iOS Firefox, and macOS Safari), it scrolls me much higher up the page. Well, on the iOS browsers it scrolls me such that the heading is just at the bottom of the viewport. On macOS Safari it scrolls me much higher - but it visibly moves after first showing me something lower than its resting place. Maybe it also initially shows me a viewport with the heading at the bottom? I may be missing nuance.
  - If the browser is macOS Firefox, it either does the right thing (described above) or scrolls me such that "Nullability in OO" is at the *bottom* of the viewport, not the top. It's doing the latter more reliably as I write this, but it was doing the former very consistently last night, and I have no idea what changed.
    - I've also seen stranger behavior in macOS Firefox, I *think*: I'd click the button, it'd take me to the wrong spot, and then clicking away and clicking back (never explicitly triggering a reload) would take me to the right spot.
    - I've also triggered this behavior in macOS Brave, a Chromium browser.
**EXCEPT**
If I disable javascript in macOS Firefox or macOS Safari, then it always does the right thing. Well, I think I've seen very brief delays before it puts me at the right scrolling position (it never animates, as far as I can tell), but that's perfectly acceptable. I'm not aware of how to disable javascript in any other WebKit browsers. I haven't tried it very much in Brave, with or without javascript, but it's never happened without javascript. I haven't tried any other browsers.
I've tried removing all the javascript from the site (all of it was in the `hugo` template, [`hugo-PaperMod`](https://github.com/adityatelange/hugo-PaperMod/) - though I'm pinned to a version that isn't the latest (see the `.gitmodules` file in this repo)). But, as of commit 0cc4f0119e2b49a78ae571827f9407b41cdfe22a, the theme and site have all their javascript. As of now, the site (the "public/" directory) contains no `<script>` or `</script>` tags. And yet, the behavior of the site remains bad with javascript enabled and good with javascript disabled, in the ways described above.
