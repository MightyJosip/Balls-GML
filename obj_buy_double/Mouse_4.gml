globalvar hit
with(obj_controller_menu) 
{
    hit = true;    
}
if (hit)
{
    ini_open("Save.sav")
    gold1 = ini_read_real("Profile", "Gold", 0)
    double_level = ini_read_real("Profile", "Double", 1)
    if gold1 >= double_cost && double_level < 5
    {
        ini_write_real("Profile", "Double", double_level + 1)
        ini_write_real("Profile", "Gold", gold1 - double_cost)
    }
    ini_close()
}

