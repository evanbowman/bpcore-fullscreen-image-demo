-- The engine cannot display a fullscreen image with a single tile
-- layer. Instead, we will use two separate tile layers.

fade(1)

txtr(2, "test.bmp")   -- First portion of image
txtr(1, "test1.bmp")  -- Second portion of image

-- Tile layer 1 displays above tile layer zero. We want to initialize all of
-- layer 1 to a transparent tile, so that it won't cover the upper half of the
-- image.
for y = 0, 19 do
   for x = 0, 29 do
      -- There are six rows of 30 image tiles in test1.bmp, followed by
      -- transparent tiles. 6 * 30 = 180.
      tile(1, x, y, 180)
   end
end

function draw_img(layer, x, y, w, h)
   local t = 0
   for yy = 0, h - 1 do
      for xx = 0, w - 1 do
         tile(layer, x + xx, y + yy, t)
         t = t + 1
      end
   end
end

-- draw the image
draw_img(2, 0, 0, 30, 14)
draw_img(1, 0, 14, 30, 6)

fade(0)

while true do
   clear()
   display()
end
