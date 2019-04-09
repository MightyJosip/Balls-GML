globalvar hit
with(obj_controller_menu) 
{
    hit = true;    
}
if (hit)
{
    ini_open("Save.sav")
    gold1 = ini_read_real("Profile", "Gold", 0)
    football = ini_read_real("Profile", "Football", 0)
    if gold1 >= football_cost && (football = 0)
    {
        ini_write_real("Profile", "Football", 1)
        ini_write_real("Profile", "Gold", gold1 - football_cost)
    }
    ini_close()
}

