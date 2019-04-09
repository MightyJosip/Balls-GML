draw_self()
str = string("B")
x1 = string_width(string_hash_to_newline(str))
y1 = string_height(string_hash_to_newline(str))
draw_text_transformed((((x-x1)+(x+x1))/2)-(x1/4), ((y-y1)+(y+y1))/2-(y1/4), string_hash_to_newline(str), 0.5, 0.5, 0)

