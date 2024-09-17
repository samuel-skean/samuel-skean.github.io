+++
title = "Projects" # in any language you want
url =  "/projects"
summary =  "Projects"
+++

# [Path Tracer](https://github.com/samuel-skean/My_Raytracing_Adventures)

![A screenshot of my pathtracer]()

It's a simple path tracer! I'm following [Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html) by Peter Shirley et al., but I'm doing it in Rust because C++ is... not my favorite.
But this is one of my favorite projects. I'm only part-way through the project, but I've also added:
- Lights (the tutorial only has background lighting)
- A Command-line Interface with clap
- A JSON input format for describing the world
- A live preview with SDL2


# [Bézier Drawing Program](https://github.com/samuel-skean/SkeanSplinesFun)

In addition to the above, I wrote a small program that renders beziers (a kind of mathematical curve) to the screen. I was inspired by this wonderful video: [The Beauty of Bézier Curves](https://www.youtube.com/watch?v=aVwxzDHniEw). Just like the previous program, it's written in Rust, uses JSON as an input format, has a CLI in clap, and shows a live preview as it draws - this time using the Rust-native libraries pixels and winit.