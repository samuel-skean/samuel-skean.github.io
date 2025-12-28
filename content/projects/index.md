---
title: "Projects"
url:  "/projects"
summary:  "Projects"
---

The GitHub icon ({{< github-icon >}}) next to each title is a link to the repository.
## Path Tracer {{< github-icon url="https://github.com/samuel-skean/My_Raytracing_Adventures" title="Path Tracer Repository" >}} {#path-tracer}

![A screenshot of my path tracer](raytracer-crazy-background.png)
[Full Size Image](raytracer-crazy-background.png "newTab")

It's a simple path tracer! I'm following [Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html) by Peter Shirley et al., but I'm doing it in Rust for nicer compiler errors.
This is one of my favorite projects. I'm only part-way, but I've also added:
- Lights (the tutorial only has background lighting)
- A command-line interface with [`clap`](https://crates.io/crates/clap)
- A JSON input format for describing the world to be rendered, parsed with [`serde`](https://crates.io/crates/serde)
- A live preview with [`pixels`](https://crates.io/crates/pixels) and [`winit`](https://crates.io/crates/winit)
- Parallelized rendering, using either [`rayon`](https://crates.io/crates/rayon) or [OS threads](https://doc.rust-lang.org/std/thread/). Threads turned out significantly faster!


## Bézier Renderer {{< github-icon url="https://github.com/samuel-skean/SkeanSplinesFun" title="Bézier Drawing Program Repository" >}}

![A screenshot of my bézier drawing program, with three curves in different colors, each a single pixel thick](bézier-several-curves.png)

In addition to the above, I wrote a small program that renders béziers (a kind of mathematical curve) to the screen. I was inspired by this wonderful video: [The Beauty of Bézier Curves](https://www.youtube.com/watch?v=aVwxzDHniEw). It's the same structure as the previous project, using mostly the same dependencies - [`clap`](https://crates.io/crates/clap), [`serde`](https://crates.io/crates/serde), [`pixels`](https://crates.io/crates/pixels), and [`winit`](https://crates.io/crates/winit).

# Collaborations {#collaborations}

## Nullability in OO {{< github-icon url="https://github.com/Olympicene/Nullability-in-OO" title="Nullability in OO Repository" >}}

My friend [Kevin](https://olympicene.dev) and I wrote a simple interpreter for an Object-Oriented language with a concept of nullability. The idea was to emulate Swift, Dart, or Kotlin with the ability to statically prevent most null pointer errors from being possible by requiring the user to indicate if a field should be nullable. This was mostly my idea, but implementing the interpreter in OCaml was a group effort. It was both trickier and easier than expected.

Right now, there's no frontend, so you'd have to write your programs in the abstract syntax tree. But I might make one someday!
