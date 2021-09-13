# bpcore-fullscreen-image-demo

A demo for https://github.com/evanbowman/BPCore-Engine

The engine from Blind Jump cannot display fullscreen images in a single tile
layer. But you can display fullscreen images with two layers. I could give more
memory to one of the engine's tile layers, so that it can access more VRAM tiles
at once, but then I'd need to take memory away from a different
layer. Ultimately, the GBA has limited memory, and it's hard to anticipate what
everyone will need from the engine.

Maybe someday I'll consider adding a new graphics mode, specifically for
fullscreen images...
