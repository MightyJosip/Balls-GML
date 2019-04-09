ini_open("Save.sav")
var next_ad_for = ini_read_real("Profile", "NextAd", 3)
if (next_ad_for > 0)
{
    ini_write_real("Profile", "NextAd", next_ad_for-1)
}

spawn_rate_level = ini_read_real("Profile", "SpawnRate", 1)
football = ini_read_real("Profile", "Football", 0)
tennis = ini_read_real("Profile", "Tennis", 0)
volleyball = ini_read_real("Profile", "Volleyball", 0)

available_balls = ds_list_create()
var i
for (i = 0; i < 4; i += 1) ds_list_add(available_balls, i);
if (football = 1) ds_list_add(available_balls, 4)
if (tennis = 1) ds_list_add(available_balls, 5)
if (volleyball = 1) ds_list_add(available_balls, 6)

var games = ini_read_real("Profile", "GamesFrenzy", 0)
ini_write_real("Profile", "GamesFrenzy", games+1)
ini_close()
clicked = false
hit = false
lives = 5
score = 0
scr = 0
multiplier = 1
alarm[0] = 900
alarm[1] = 25
alarm[2] = 3600 - (300 * (spawn_rate_level - 1))
alarm[4] = 1350
slow = false
double = false
bounce = false

action_sound(snd_main, 1);
