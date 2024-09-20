+++
title = "Projects" # in any language you want
url =  "/projects"
summary =  "Projects"
+++

# [Path Tracer](https://github.com/samuel-skean/My_Raytracing_Adventures)

![A screenshot of my pathtracer](raytracer-crazy-background.png)

It's a simple path tracer! I'm following [Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html) by Peter Shirley et al., but I'm doing it in Rust for nicer compiler errors.
But this is one of my favorite projects. I'm only part-way through the project, but I've also added:
- Lights (the tutorial only has background lighting)
- A Command-line Interface with clap
- A JSON input format for describing the world, parsed with serde
- A live preview with SDL2 or pixels and winit


# [Bézier Drawing Program](https://github.com/samuel-skean/SkeanSplinesFun)

![A screenshot of my bezier drawing program](bezier-several-curves.png)

In addition to the above, I wrote a small program that renders beziers (a kind of mathematical curve) to the screen. I was inspired by this wonderful video: [The Beauty of Bézier Curves](https://www.youtube.com/watch?v=aVwxzDHniEw). It's the same structure as the previous project, using mostly the same dependencies - clap, serde, pixels, and winit.