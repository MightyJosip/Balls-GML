ini_open("Save.sav")
var games = ini_read_real("Profile", "Games", 0)
ini_write_real("Profile", "Games", games+1)
ini_close()
