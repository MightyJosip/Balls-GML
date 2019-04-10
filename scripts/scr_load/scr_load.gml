ini_open("Save.sav")
var prehighscore = ini_read_real("Profile", "Highscore", 0)
ini_close()

return prehighscore
