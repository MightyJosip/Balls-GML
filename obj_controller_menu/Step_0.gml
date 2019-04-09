ini_open("Save.sav")
slow_level = ini_read_real("Profile", "Slow", 1)
double_level = ini_read_real("Profile", "Double", 1)
bounce_level = ini_read_real("Profile", "Bounce", 1)
spawn_rate_level = ini_read_real("Profile", "SpawnRate", 1)
next_ad = ini_read_real("Profile", "NextAd", 3)
gold = ini_read_real("Profile", "Gold", 0)
ini_close()

slow_cost = 50 * power(2, (slow_level - 1))
double_cost = 50 * power(2, (double_level - 1))
bounce_cost = 50 * power(2, (bounce_level - 1))
spawn_rate_cost = 50 * power(2, (spawn_rate_level - 1))

if (next_ad = 0)
{
    AdColony_ShowVideo(global.ZoneId)
    ini_open("Save.sav")
    ini_write_real("Profile", "NextAd", 3)
    ini_close()
}

