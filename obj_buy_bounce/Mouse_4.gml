globalvar hit
with(obj_controller_menu) 
{
    hit = true;    
}
if (hit)
{
    ini_open("Save.sav")
    gold1 = ini_read_real("Profile", "Gold", 0)
    bounce_level = ini_read_real("Profile", "Bounce", 1)
    if gold1 >= bounce_cost && bounce_level < 5
    {
        ini_write_real("Profile", "Bounce", bounce_level + 1)
        ini_write_real("Profile", "Gold", gold1 - bounce_cost)
    }
    ini_close()
}

