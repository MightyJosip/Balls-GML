ini_open("Save.sav")
var pregold = ini_read_real("Profile", "Gold", 0)
ini_write_real("Profile", "Gold", pregold+1)
ini_close()
