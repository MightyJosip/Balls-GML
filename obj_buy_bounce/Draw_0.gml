globalvar bounce_level
globalvar bounce_cost
draw_self()
if (bounce_level < 5) str = string(bounce_cost)
if (bounce_level > 4) str = string("Max")
x1 = string_width(string_hash_to_newline(str))
y1 = string_height(string_hash_to_newline(str))
draw_text_transformed((((x-x1)+(x+x1))/2)-(x1/4), ((y-y1)+(y+y1))/2-(y1/4), string_hash_to_newline(str), 0.5, 0.5, 0)

