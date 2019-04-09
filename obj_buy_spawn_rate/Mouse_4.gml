globalvar hit
with(obj_controller_menu) 
{
    hit = true;    
}
if (hit)
{
    ini_open("Save.sav")
    gold1 = ini_read_real("Profile", "Gold", 0)
    spawn_rate_level = ini_read_real("Profile", "SpawnRate", 1)
    if gold1 >= spawn_rate_cost && spawn_rate_level < 5
    {
        ini_write_real("Profile", "SpawnRate", spawn_rate_level + 1)
        ini_write_real("Profile", "Gold", gold1 - spawn_rate_cost)
    }
    ini_close()
}

