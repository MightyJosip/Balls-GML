ini_open("Save.sav")
gold = ini_read_real("Profile", "Gold", 0)
ini_close()
draw_text_transformed(10, 10, string_hash_to_newline("Gold: " + string(gold)), 0.5, 0.5, 0)

