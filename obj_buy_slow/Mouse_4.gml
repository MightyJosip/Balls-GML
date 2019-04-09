globalvar hit
with(obj_controller_menu) 
{
    hit = true;    
}
if (hit)
{
    ini_open("Save.sav")
    gold1 = ini_read_real("Profile", "Gold", 0)
    slow_level = ini_read_real("Profile", "Slow", 1)
    if gold1 >= slow_cost && slow_level < 5
    {
        ini_write_real("Profile", "Slow", slow_level + 1)
        ini_write_real("Profile", "Gold", gold1 - slow_cost)
    }
    ini_close()
}

