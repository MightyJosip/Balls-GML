ini_open("Save.sav")
var highscore = score
ini_write_real("Profile", "Highscore", highscore)
ini_close()
