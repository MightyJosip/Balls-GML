if (second < 10)
{
    str = "0" + string(second)
}
else
{
    str = string(second)
}
x1 = string_width(string_hash_to_newline(string(minute) + ":" + str))
draw_text((room_width-x1)/2, 0, string_hash_to_newline(string(minute) + ":" + str))

