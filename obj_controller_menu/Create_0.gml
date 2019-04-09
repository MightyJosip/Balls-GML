clicked = false
hit = false

ini_open("Save.sav")
slow_level = ini_read_real("Profile", "Slow", 1)
double_level = ini_read_real("Profile", "Double", 1)
bounce_level = ini_read_real("Profile", "Bounce", 1)
spawn_rate_level = ini_read_real("Profile", "SpawnRate", 1)
next_ad = ini_read_real("Profile", "NextAd", 3)
gold = ini_read_real("Profile", "Gold", 1)
football = ini_read_real("Profile", "Football", 0)
tennis = ini_read_real("Profile", "Tennis", 0)
volleyball = ini_read_real("Profile", "Volleyball", 0)
ini_close()

