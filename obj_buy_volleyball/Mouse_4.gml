globalvar hit
with(obj_controller_menu) 
{
    hit = true;    
}
if (hit)
{
    ini_open("Save.sav")
    gold1 = ini_read_real("Profile", "Gold", 0)
    volleyball = ini_read_real("Profile", "Volleyball", 0)
    if gold1 >= volleyball_cost && (volleyball = 0)
    {
        ini_write_real("Profile", "Volleyball", 1)
        ini_write_real("Profile", "Gold", gold1 - volleyball_cost)
    }
    ini_close()
}

