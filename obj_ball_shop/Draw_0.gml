draw_rectangle(40, 80, 168, 208, true)
draw_rectangle(30, 70, 178, 328, true)
draw_sprite(spr_ball, 4, 104, 144)
str = "Own"
x1 = string_width(string_hash_to_newline(str))
y1 = string_height(string_hash_to_newline(str))
draw_text_transformed((((104-x1)+(104+x1))/2)-(x1/4), ((268-y1)+(268+y1))/2-(y1/4), string_hash_to_newline(str), 0.5, 0.5, 0)

draw_rectangle(200, 80, 328, 208, true)
draw_rectangle(190, 70, 338, 328, true)
draw_sprite(spr_ball, 5, 264, 144)
str = "Own"
x1 = string_width(string_hash_to_newline(str))
y1 = string_height(string_hash_to_newline(str))
draw_text_transformed((((264-x1)+(264+x1))/2)-(x1/4), ((268-y1)+(268+y1))/2-(y1/4), string_hash_to_newline(str), 0.5, 0.5, 0)

draw_rectangle(360, 80, 488, 208, true)
draw_rectangle(350, 70, 498, 328, true)
draw_sprite(spr_ball, 6, 424, 144)
str = "Own"
x1 = string_width(string_hash_to_newline(str))
y1 = string_height(string_hash_to_newline(str))
draw_text_transformed((((424-x1)+(424+x1))/2)-(x1/4), ((268-y1)+(268+y1))/2-(y1/4), string_hash_to_newline(str), 0.5, 0.5, 0)  

